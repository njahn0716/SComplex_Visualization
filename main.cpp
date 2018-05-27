
#include <iostream>
#include <vector>
using namespace std;


// GL

#include <glew.h>

#include <glfw3.h>
GLFWwindow *window;
float windowWidth = 1440.0f;
float windowHeight = 900.0f;

int frameWidth = 0;
int frameHeight = 0;

#include <glm/glm.hpp>
#include <glm/gtc/constants.hpp>
using namespace glm;



#include "src/scomplex.hpp"
#include "src/shader.hpp"

Shader shader;

SComplex scomplex;

double prevX = -1.0;
double prevY = -1.0;
double prevPressX = -1.0;
double prevPressY = -1.0;

bool mouse_button_left_pressed = false;
bool mouse_button_right_pressed = false;

bool update = false;

mat4 MtoR(mat4 M){
    mat4 R = M;
    R[3][0] = 0;
    R[3][1] = 0;
    R[3][2] = 0;
    return R;
}

void mouse_button_callback(GLFWwindow* window , int button, int action, int /* mods */){
    switch(button){
        case GLFW_MOUSE_BUTTON_LEFT:
            if(action == GLFW_PRESS){
                double xpos, ypos;
                glfwGetCursorPos(window, &xpos, &ypos);
                prevPressX = xpos;
                prevPressY = ypos;
                mouse_button_left_pressed = true;
            } else if(action == GLFW_RELEASE){
                prevPressX = -1.0;
                prevPressY = -1.0;
                scomplex.rotation = scomplex.temp_rotation * scomplex.rotation;
                scomplex.rotate(0.0, 0.0, 0.0, 0.0);
                mouse_button_left_pressed = false;
            } else {
                break;
            }
            update = true;
            break;
        case GLFW_MOUSE_BUTTON_RIGHT:
            if(action == GLFW_PRESS){
                double xpos, ypos;
                glfwGetCursorPos(window, &xpos, &ypos);
                prevPressX = xpos;
                prevPressY = ypos;
                mouse_button_right_pressed = true;
            } else if(action == GLFW_RELEASE){
                prevPressX = -1.0;
                prevPressY = -1.0;
                scomplex.translation = scomplex.temp_translation * scomplex.translation;
                scomplex.translate(0.0, 0.0, 0.0, 0.0);
                mouse_button_right_pressed = false;
            } else {
                break;
            }
            update = true;
            break;
        default:
            break;
    }
}


void cursor_pos_callback(GLFWwindow* /* window */, double xpos, double ypos){
    if(prevX < 0.0){
        prevX = xpos;
        prevY = ypos;
        return;
    }


    if(mouse_button_left_pressed){
        // Rotate model
        update = true;
        scomplex.rotate(prevPressX - windowWidth / 2, - prevPressY + windowHeight / 2,
                        xpos - windowWidth / 2, - ypos + windowHeight / 2);

        prevX = xpos;
        prevY = ypos;
        return;
    }

    if(mouse_button_right_pressed){
        // Translate model
        update = true;
        scomplex.translate(prevPressX, - prevPressY, xpos, - ypos);

        prevX = xpos;
        prevY = ypos;
        return;
    }
}

void keyboard_callback(GLFWwindow* /* window */, int key, int /* scancode */, int action, int /* mods */){
    switch(key){
        case GLFW_KEY_V:
            // View mode change
            // Any view mode?
            update = true;
            break;
        case GLFW_KEY_ENTER:
            // Next Step
            if(action != GLFW_PRESS){
                break;
            }
            scomplex.visible ++;
            scomplex.visible = std::max(scomplex.visible, 0);
            scomplex.visible = std::min(scomplex.visible, scomplex.num_simplex);
            update = true;
            break;
        case GLFW_KEY_BACKSPACE:
            // Previous Step
            if(action != GLFW_PRESS){
                break;
            }
            scomplex.visible --;
            scomplex.visible = std::max(scomplex.visible, 0);
            scomplex.visible = std::min(scomplex.visible, scomplex.num_simplex);
            update = true;
            break;
        default:
            break;
    }
}
void scroll_callback(GLFWwindow* /* offset */, double /* xoffset */, double yoffset){
    // Zoom in / out
    shader.update_fov((float)yoffset);
    update = true;
}



int main() {

    cout << "Hello, World!" << endl;



    // Initialize
    // GLFW
    if(!glfwInit())
        return -1;

    glfwWindowHint(GLFW_SAMPLES, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwWindowHint(GLFW_DECORATED, GL_FALSE);

    window = glfwCreateWindow((int)windowWidth, (int)windowHeight, "SComplex Viewer", nullptr, nullptr);
    if(window == nullptr){
        glfwTerminate();
        return -1;
    }

    glfwMakeContextCurrent(window);
    //glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
    glfwSetWindowPos(window, 0, 0);

        // GLEW
    glewExperimental = (GLboolean)true;
    glewInit();

    glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);
    glfwSetMouseButtonCallback(window, mouse_button_callback);
    glfwSetCursorPosCallback(window, cursor_pos_callback);
    glfwSetKeyCallback(window, keyboard_callback);
    glfwSetScrollCallback(window, scroll_callback);

    glfwGetFramebufferSize(window, &frameWidth, &frameHeight);

    printf("Frame size : %d, %d\n", frameWidth, frameHeight);

        // GL
    glClearColor(0.0, 0.0, 0.0, 0.0);

    glEnable(GL_DEPTH_TEST);
    //glEnable(GL_BLEND);
    //glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glDepthFunc(GL_LESS);

    shader = Shader("src/shaders/basicVertex.glsl", "src/shaders/basicFragment.glsl");
    shader.update_frame(frameWidth, frameHeight);

    scomplex = SComplex();
    scomplex.loadFile("scomplex.txt");
    scomplex.prepare();
    scomplex.prepareDraw();



    double prevDrawTime = 0.0;
    float diffTime;
    glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);

    update = true;

    printf("Start loop\n");
    do {

        diffTime = (float) (glfwGetTime() - prevDrawTime);
        if ((diffTime < 0.005)) {
            glfwPollEvents();
            continue;
        }

        if(!update){
            glfwPollEvents();
            continue;
        }






        glUseProgram(shader.shaderID);
        glEnable(GL_DEPTH_TEST);
        glBindFramebuffer(GL_FRAMEBUFFER, 0);
        glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        glClear((GLuint)GL_COLOR_BUFFER_BIT | (GLuint)GL_DEPTH_BUFFER_BIT);
        glLineWidth(1.0f);
    //    shaders[0].update_light(0, l);

      //  testModel.prepareDraw();
      //  testModel.draw(&shaders[0]);

        scomplex.prepareDraw();
        scomplex.draw(shader);

        prevDrawTime = glfwGetTime();
        glfwSwapBuffers(window);
        glfwPollEvents();
    } while(glfwGetKey(window, GLFW_KEY_ESCAPE) != GLFW_PRESS && glfwWindowShouldClose((window)) == 0);




    // Terminate
        // Free test model
    //pmx_free(testPMX);


    return 0;
}