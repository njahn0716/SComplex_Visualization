#version 330 core

smooth in vec3 fragmentPosition;
smooth in vec3 fragmentNormal;
smooth in vec3 fragmentColor;

out vec3 color;

uniform vec3 uniform_Light;

void main(){

    float diffuse = max(dot(fragmentNormal, uniform_Light), dot(-fragmentNormal, uniform_Light));
    float ambient = 0.3;

    float intensity = diffuse * 0.3 + ambient;

    vec3 finalColor = fragmentColor * intensity;
    //vec3 finalColor = fragmentColor;
    color = pow(finalColor, vec3(1.0/2.2)); // Gamma Correction
    //color = pow(fragmentColor, vec3(1.0/2.2));
    //color = vec3(1.0, 0.0, 1.0);
}