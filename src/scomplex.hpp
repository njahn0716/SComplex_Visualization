//
// Created by 안남조 on 2018. 5. 27..
//

#ifndef SCOMPLEX_VISUALIZATION_SCOMPLEX_HPP
#define SCOMPLEX_VISUALIZATION_SCOMPLEX_HPP

#include <vector>

#include <glm/glm.hpp>
#include <glm/ext.hpp>

#include "shader.hpp"


class SComplex {
private:



    double rotate_prevXoffset, rotate_prevYoffset;
    double rotate_xoffset, rotate_yoffset;
    double translate_prevXoffset, translate_prevYoffset;
    double translate_xoffset, translate_yoffset;

public:
    std::vector<glm::vec3> vertices;
    std::vector<glm::vec3> normals;
    std::vector<glm::vec3> colors;

    GLuint vertexArrayID;

    GLuint vertexBufferID;
    GLuint normalBufferID;
    GLuint colorBufferID;

    glm::mat4 modelT;
    glm::mat4 translation;
    glm::mat4 temp_translation;
    glm::mat4 rotation;
    glm::mat4 temp_rotation;

    int num_simplex;
    int visible;

    SComplex();

    bool loadFile(const char* path);

    void prepare();

    void prepareDraw();

    void draw(Shader &shader);


    void rotate(double prevXoffset, double prevYoffset, double xoffset, double yoffset);
    void translate(double prevXoffset, double prevYoffset, double xoffset, double yoffset);



};

typedef class SComplex SComplex;


#endif //SCOMPLEX_VISUALIZATION_SCOMPLEX_HPP
