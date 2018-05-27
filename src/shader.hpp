//
// Created by 안남조 on 2018. 5. 27..
//

#ifndef SCOMPLEX_VISUALIZATION_SHADER_HPP
#define SCOMPLEX_VISUALIZATION_SHADER_HPP


#include <GL/glew.h>
#include <glm/glm.hpp>
#include <glew.h>

class Shader {
private:
    float fov;
    int width, height;

public:
    Shader();
    Shader(const char *vertex, const char *fragment);

    void update_frame(int width, int height);
    void update_fov(float fov_offset);
    GLuint shaderID;

    glm::mat4 projection;
    glm::mat4 eye;
    GLint projectionID;
    GLint eyeID;
    GLint modelID;

    GLint lightID;

};

typedef class Shader Shader;


#endif //SCOMPLEX_VISUALIZATION_SHADER_HPP
