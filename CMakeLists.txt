﻿# CMakeList.txt: проект CMake для CMakeRob; включите исходный код и определения,
# укажите здесь логику для конкретного проекта.
#
cmake_minimum_required (VERSION 3.8)

project ("CMakeRob")

# Добавьте источник в исполняемый файл этого проекта.
add_executable (CMakeRob "CMakeRob.cpp" "CMakeRob.h" "Plane.h" "plane.cpp")

# TODO: Добавьте тесты и целевые объекты, если это необходимо.
