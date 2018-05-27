#version 330 core

layout(location = 0) in vec3 vertexPosition;
layout(location = 1) in vec3 vertexNormal;
layout(location = 2) in vec3 vertexColor;

smooth out vec3 fragmentPosition;
smooth out vec3 fragmentNormal;
smooth out vec3 fragmentColor;

uniform mat4 Projection;
uniform mat4 Eye;
uniform mat4 ModelT;

void main(){
    mat4 MVM = inverse(Eye) * ModelT;

    vec4 world_position = MVM * vec4(vertexPosition, 1);
    fragmentPosition = world_position.xyz;
    gl_Position = Projection * world_position;

    mat4 invm = inverse(MVM);
    invm[0][3] = 0;
    invm[1][3] = 0;
    invm[2][3] = 0;
    mat4 NVM = transpose(invm);
    vec4 tnormal = vec4(vertexNormal, 0.0);
    fragmentNormal = vec3(NVM * tnormal);

    fragmentColor = vertexColor;

}
