//
// Created by 안남조 on 2018. 5. 27..
//

#include <iostream>
#include <fstream>
#include <string>

#include "scomplex.hpp"

std::vector<glm::vec3> color_palette = {
    glm::vec3(1.0f, 0.0f, 0.0f),
    glm::vec3(1.0f, 1.0f, 1.0f),
    glm::vec3(0.0f, 0.0f, 1.0f),
    glm::vec3(0.0f, 1.0f, 0.0f),
    glm::vec3(0.5f, 1.0f, 0.3f)
};

#define RADIUS (300.0)
#define TRANSLATE_MULTIPLIER (0.01)
SComplex::SComplex(){

    num_simplex = 0;

    rotate_xoffset = 0.0;
    rotate_yoffset = 0.0;
    translate_xoffset = 0.0;
    translate_yoffset = 0.0;

    modelT = glm::mat4(1.0f);
    translation = glm::mat4(1.0f);
    rotation = glm::mat4(1.0f);
    temp_rotation = glm::mat4(1.0f);

    visible = 0;

    rotate_prevXoffset = 0.0;
    rotate_prevYoffset = 0.0;
    rotate_xoffset = 0.0;
    rotate_yoffset = 0.0;
}

bool SComplex::loadFile(const char* path){

    std::ifstream file(path);
    if(!file.is_open()){
        printf("No such file exists\n");
        return false;
    }

    std::string line;
    std::getline(file, line);
    int d = std::stoi(line);
    std::getline(file, line);
    int D = std::stoi(line);
    std::getline(file, line);
    num_simplex = std::stoi(line);

    for(int n = 0; n < num_simplex; n++){
        std::getline(file, line); // Empty line
        std::vector<glm::vec3> temp_vertices;

        for(int v = 0; v < d + 1; v++){
            std::getline(file, line);
            std::string::size_type sz;
            double x = std::stod(line, &sz);
            std::string second_line = line.substr(sz);
            double y = std::stod(second_line, &sz);
            double z = std::stod(second_line.substr(sz+1));
            temp_vertices.push_back(glm::vec3((float)x, (float)y, (float)z));

            printf("Reading %lf, %lf, %lf\n", x, y, z);
        }

        if(d == 2){
            vertices.push_back(temp_vertices[0]);
            vertices.push_back(temp_vertices[1]);
            vertices.push_back(temp_vertices[2]);
            normals.push_back((temp_vertices[0] - temp_vertices[1]) * (temp_vertices[0] - temp_vertices[2]));
            normals.push_back((temp_vertices[0] - temp_vertices[1]) * (temp_vertices[0] - temp_vertices[2]));
            normals.push_back((temp_vertices[0] - temp_vertices[1]) * (temp_vertices[0] - temp_vertices[2]));

        } else if(d == 3){
            vertices.push_back(temp_vertices[0]);
            vertices.push_back(temp_vertices[1]);
            vertices.push_back(temp_vertices[2]);
            vertices.push_back(temp_vertices[0]);
            vertices.push_back(temp_vertices[1]);
            vertices.push_back(temp_vertices[3]);
            vertices.push_back(temp_vertices[0]);
            vertices.push_back(temp_vertices[2]);
            vertices.push_back(temp_vertices[3]);
            vertices.push_back(temp_vertices[1]);
            vertices.push_back(temp_vertices[2]);
            vertices.push_back(temp_vertices[3]);
            normals.push_back((temp_vertices[0] - temp_vertices[1]) * (temp_vertices[0] - temp_vertices[2]));
            normals.push_back((temp_vertices[0] - temp_vertices[1]) * (temp_vertices[0] - temp_vertices[2]));
            normals.push_back((temp_vertices[0] - temp_vertices[1]) * (temp_vertices[0] - temp_vertices[2]));
            normals.push_back((temp_vertices[0] - temp_vertices[1]) * (temp_vertices[0] - temp_vertices[3]));
            normals.push_back((temp_vertices[0] - temp_vertices[1]) * (temp_vertices[0] - temp_vertices[3]));
            normals.push_back((temp_vertices[0] - temp_vertices[1]) * (temp_vertices[0] - temp_vertices[3]));
            normals.push_back((temp_vertices[0] - temp_vertices[2]) * (temp_vertices[0] - temp_vertices[3]));
            normals.push_back((temp_vertices[0] - temp_vertices[2]) * (temp_vertices[0] - temp_vertices[3]));
            normals.push_back((temp_vertices[0] - temp_vertices[2]) * (temp_vertices[0] - temp_vertices[3]));
            normals.push_back((temp_vertices[1] - temp_vertices[2]) * (temp_vertices[1] - temp_vertices[3]));
            normals.push_back((temp_vertices[1] - temp_vertices[2]) * (temp_vertices[1] - temp_vertices[3]));
            normals.push_back((temp_vertices[1] - temp_vertices[2]) * (temp_vertices[1] - temp_vertices[3]));
            for (int c = 0; c < 12; c++){
               // colors.push_back(glm::vec3((float)(n+1) / (float)num_simplex));
                colors.push_back(color_palette[n]);
            }
        }

        printf("One simplex done\n");
    }

    /*vertices.push_back(glm::vec3(100.0f, 100.0f, -10.0f));
    vertices.push_back(glm::vec3(-100.0f, -100.0f, -10.0f));
    vertices.push_back(glm::vec3(0.0f, 100.0f, -10.0f));

    normals.push_back(glm::vec3(0.0f, 0.0f, 1.0f));
    normals.push_back(glm::vec3(0.0f, 0.0f, 1.0f));
    normals.push_back(glm::vec3(0.0f, 0.0f, 1.0f));

    colors.push_back(glm::vec3(1.0f, 0.0f, 0.0f));
    colors.push_back(glm::vec3(0.0f, 1.0f, 0.0f));
    colors.push_back(glm::vec3(0.0f, 0.0f, 1.0f));
    */

    return true;
}

void SComplex::prepare(){

    glGenVertexArrays(1, &vertexArrayID);
    glBindVertexArray(vertexArrayID);

    glGenBuffers(1, &vertexBufferID);
    glBindBuffer(GL_ARRAY_BUFFER, vertexBufferID);
    glBufferData(GL_ARRAY_BUFFER, sizeof(glm::vec3) * vertices.size(), &vertices[0], GL_STATIC_DRAW);

    glGenBuffers(1, &normalBufferID);
    glBindBuffer(GL_ARRAY_BUFFER, normalBufferID);
    glBufferData(GL_ARRAY_BUFFER, sizeof(glm::vec3) * normals.size(), &normals[0], GL_STATIC_DRAW);

    glGenBuffers(1, &colorBufferID);
    glBindBuffer(GL_ARRAY_BUFFER, colorBufferID);
    glBufferData(GL_ARRAY_BUFFER, sizeof(glm::vec3) * colors.size(), &colors[0], GL_STATIC_DRAW);

}

void SComplex::prepareDraw(){



    double length = glm::sqrt(rotate_prevXoffset * rotate_prevXoffset + rotate_prevYoffset * rotate_prevYoffset);
    length = std::min(length, RADIUS);
    length = std::max(length, 0.0001);
    double rotate_prevZ = glm::sqrt(RADIUS * RADIUS - length * length);
    glm::quat w = glm::quat(0.0f, glm::normalize(glm::vec3(
                     -(float)(rotate_prevXoffset / length * 0.99),
                        -(float)(rotate_prevYoffset / length * 0.99),
                        -(float)(rotate_prevZ / length * 0.99))));

    length = glm::sqrt(rotate_xoffset * rotate_xoffset + rotate_yoffset * rotate_yoffset);
    length = std::min(length, RADIUS);
    length = std::max(length, 0.0001);
    double rotate_z = glm::sqrt(RADIUS * RADIUS - length * length);
    glm::quat v = glm::quat(0.0f, glm::normalize(glm::vec3(
            (float)(rotate_xoffset / length * 0.99),
                            (float)(rotate_yoffset / length * 0.99),
                            (float)(rotate_z / length * 0.99))));


    //printf("Rotating [%lf, %lf, %lf] to [%lf, %lf, %lf]\n", rotate_prevXoffset, rotate_prevYoffset, rotate_prevZ,
    //rotate_xoffset, rotate_yoffset, rotate_z);

    glm::quat rotate_quat = v * w;
    temp_rotation = glm::toMat4(rotate_quat);

    /*printf("Rotation matrix = \n[%f %f %f %f]\n[%f %f %f %f]\n[%f %f %f %f]\n[%f %f %f %f]\n",
                temp_rotation[0][0],temp_rotation[0][1],temp_rotation[0][2],temp_rotation[0][3],
                temp_rotation[1][0],temp_rotation[1][1],temp_rotation[1][2],temp_rotation[1][3],
                temp_rotation[2][0],temp_rotation[2][1],temp_rotation[2][2],temp_rotation[2][3],
                temp_rotation[3][0],temp_rotation[3][1],temp_rotation[3][2],temp_rotation[3][3]);
    */

    //temp_rotation = glm::toMat4(quat);

    temp_translation = glm::translate(glm::mat4(1.0f), glm::vec3(translate_xoffset - translate_prevXoffset,
                                                            translate_yoffset - translate_prevYoffset,
                                                            0.0f) * TRANSLATE_MULTIPLIER);
    modelT = temp_translation * translation * temp_rotation * rotation;
}


void SComplex::draw(Shader &shader){
    glUseProgram(shader.shaderID);
    //printf("Using program %d\n", shader.shaderID);
    //printf("Uniforms, %d, %d, %d, %d\n", shader.projectionID, shader.eyeID, shader.modelID, shader.lightID);

    glUniformMatrix4fv(shader.projectionID, 1, GL_FALSE, &(shader.projection[0][0]));
    glUniformMatrix4fv(shader.eyeID, 1, GL_FALSE, &(shader.eye[0][0]));
    glUniformMatrix4fv(shader.modelID, 1, GL_FALSE, &(modelT[0][0]));

    glUniform3f(shader.lightID, 0.0f, 0.0f, 1.0f);

    glBindVertexArray(vertexArrayID);

    glEnableVertexAttribArray(0);
    glBindBuffer(GL_ARRAY_BUFFER, vertexBufferID);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(glm::vec3), nullptr);

    glEnableVertexAttribArray(1);
    glBindBuffer(GL_ARRAY_BUFFER, normalBufferID);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, sizeof(glm::vec3), nullptr);

    glEnableVertexAttribArray(2);
    glBindBuffer(GL_ARRAY_BUFFER, colorBufferID);
    glVertexAttribPointer(2, 3, GL_FLOAT, GL_FALSE, sizeof(glm::vec3), nullptr);

   // glDrawArrays(GL_TRIANGLES, 24, 12);
    glDrawArrays(GL_TRIANGLES, 0, vertices.size() / num_simplex * visible);

}

void SComplex::rotate(double prevXoffset, double prevYoffset, double xoffset, double yoffset){
    rotate_prevXoffset = prevXoffset;
    rotate_prevYoffset = prevYoffset;
    rotate_xoffset = xoffset;
    rotate_yoffset = yoffset;
   // printf("Rotating %lf, %lf based on %lf, %lf\n", xoffset, yoffset, prevXoffset, prevYoffset);
}

void SComplex::translate(double prevXoffset, double prevYoffset, double xoffset, double yoffset){
    translate_prevXoffset = prevXoffset;
    translate_prevYoffset = prevYoffset;
    translate_xoffset = xoffset;
    translate_yoffset = yoffset;
}