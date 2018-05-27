cmake_minimum_required(VERSION 3.3)
project(SComplex_Visualization)

find_package(OpenGL REQUIRED)
#find_library(COCOA_LIBRARY Cocoa)

add_subdirectory(OpenGLs)


if(INCLUDE_DISTRIB)
    add_subdirectory(distrib)
endif(INCLUDE_DISTRIB)

include_directories(
        OpenGLs/glfw-3.2.1/include/GLFW/
        OpenGLs/glm-0.9.8.5/
        OpenGLs/glew-2.1.0/include/GL/
        #src/shaders
        .
)

set(ALL_LIBS
        #${COCOA_LIBRARY}
        ${OPENGL_LIBRARY}
        glfw
        GLEW_210
        )

add_definitions(
        -DTW_STATIC
        -DTW_NO_LIB_PRAGMA
        -DTW_NO_DIRECT3D
        -DGLEW_STATIC
        -D_CRT_SECURE_NO_WARNINGS
)



set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
        main.cpp

        src/scomplex.cpp
        src/scomplex.hpp

        src/shader.cpp
        src/shader.hpp


        )


set(SHADER_FILES
        src/shaders/basicVertex.glsl
        src/shaders/basicFragment.glsl src/scomplex.cpp src/scomplex.hpp src/shader.cpp src/shader.hpp)
        #src/shaders/textureVertex.glsl
        #src/shaders/textureFragment.glsl)

#set(MODEL_FILES
        #src/assets/Tda/Tda.pmx
        #src/assets/REMmaple/REMmaple.pmx
        #src/bone.cpp src/bone.hpp src/motion.cpp src/motion.hpp)

add_executable(SComplex_Visualization
        ${SOURCE_FILES}
        ${SHADER_FILES})
#       ${MODEL_FILES})

target_link_libraries(SComplex_Visualization
        ${ALL_LIBS})

