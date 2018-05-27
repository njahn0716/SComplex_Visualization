//
// Created by 안남조 on 2018. 5. 27..
//

#include <string>
#include <iostream>
#include <fstream>
#include <vector>

#include <glm/glm.hpp>
#include <glm/ext.hpp>

#include "shader.hpp"

#define FOV_MULTIPLIER (0.1)
#define FOV_MAX (150.0f / 180.0f * 3.14f)
#define FOV_MIN (40.0f / 180.0f * 3.14f)

Shader::Shader(){

}

Shader::Shader(const char* vertex, const char* fragment){


    printf("Compling Shader : %s, %s\n", vertex, fragment);

    GLuint vertexShaderID = glCreateShader(GL_VERTEX_SHADER);
    GLuint fragmentShaderID = glCreateShader(GL_FRAGMENT_SHADER);

    std::string vertexShaderCode;
    std::ifstream vertexShaderStream(vertex, std::ios::in);
    std::string fragmentShaderCode;
    std::ifstream fragmentShaderStream(fragment, std::ios::in);

    std::string line = "";
    while(std::getline(vertexShaderStream, line)){
        vertexShaderCode += "\n" + line;
    }
    vertexShaderStream.close();

    while(std::getline(fragmentShaderStream, line)){
        fragmentShaderCode += "\n" + line;
    }
    fragmentShaderStream.close();

    const char *vertexSourcePointer = vertexShaderCode.c_str();
    const char *fragmentSourcePointer = fragmentShaderCode.c_str();

    GLint result = GL_FALSE;
    int infoLogLen;

    glShaderSource(vertexShaderID, 1, &vertexSourcePointer, NULL);
    glCompileShader(vertexShaderID);
    glGetShaderiv(vertexShaderID, GL_COMPILE_STATUS, &result);
    glGetShaderiv(vertexShaderID, GL_INFO_LOG_LENGTH, &infoLogLen);
    if(infoLogLen > 0){
        std::vector<char> vertexShaderErrorMessage(infoLogLen+1);
        glGetShaderInfoLog(vertexShaderID, infoLogLen, NULL, &vertexShaderErrorMessage[0]);
        printf("%s\n", &vertexShaderErrorMessage[0]);
    }
    if(result == GL_FALSE){
        printf("vertex shader fail\n");
    }

    glShaderSource(fragmentShaderID, 1, &fragmentSourcePointer, NULL);

    glCompileShader(fragmentShaderID);
    glGetShaderiv(fragmentShaderID, GL_COMPILE_STATUS, &result);
    glGetShaderiv(fragmentShaderID, GL_INFO_LOG_LENGTH, &infoLogLen);
    if(infoLogLen > 0){
        std::vector<char> fragmentShaderErrorMessage(infoLogLen+1);
        glGetShaderInfoLog(fragmentShaderID, infoLogLen, NULL, &fragmentShaderErrorMessage[0]);
        printf("%s\n", &fragmentShaderErrorMessage[0]);
    }
    if(result == GL_FALSE){
        printf("fragment shader fail\n");
    }

    shaderID = glCreateProgram();
    glAttachShader(shaderID, vertexShaderID);
    glAttachShader(shaderID, fragmentShaderID);
    glLinkProgram(shaderID);

    glDeleteShader(vertexShaderID);
    glDeleteShader(fragmentShaderID);

    glUseProgram(shaderID);

    projectionID = glGetUniformLocation(shaderID, "Projection");
    eyeID = glGetUniformLocation(shaderID, "Eye");
    modelID = glGetUniformLocation(shaderID, "ModelT");

    lightID = glGetUniformLocation(shaderID, "uniform_Light");

    eye = glm::mat4(1.0f);
    eye = glm::translate(eye, glm::vec3(0.0f, 0.0f, 3.0f));

    fov = 1.0f;
    projection = glm::perspective(fov, 0.8f, 0.1f, 100.0f);


}

void Shader::update_frame(int width, int height){
    this->width = width;
    this->height = height;
    projection = glm::perspective(fov, (float)width/(float)height, 0.1f, 100.0f);
}

void Shader::update_fov(float fov_offset){
    fov += fov_offset * FOV_MULTIPLIER;
    fov = glm::min(fov, FOV_MAX);
    fov = glm::max(fov, FOV_MIN);
    projection = glm::perspective(fov, (float)width/(float)height, 0.1f, 100.0f);
    printf("updated fov = %f\n", fov);
}