# Generated from collidingmice.pro.

cmake_minimum_required(VERSION 3.14)
project(collidingmice LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

set(INSTALL_EXAMPLEDIR "examples/widgets/graphicsview/collidingmice")

find_package(Qt6 COMPONENTS Core)
find_package(Qt6 COMPONENTS Gui)
find_package(Qt6 COMPONENTS Widgets)

add_qt_gui_executable(collidingmice
    main.cpp
    mouse.cpp mouse.h
)
target_link_libraries(collidingmice PUBLIC
    Qt::Core
    Qt::Gui
    Qt::Widgets
)


# Resources:
set(mice_resource_files
    "images/cheese.jpg"
)

qt6_add_resources(collidingmice "mice"
    PREFIX
        "/"
    FILES
        ${mice_resource_files}
)

install(TARGETS collidingmice
    RUNTIME DESTINATION "${INSTALL_EXAMPLEDIR}"
    BUNDLE DESTINATION "${INSTALL_EXAMPLEDIR}"
    LIBRARY DESTINATION "${INSTALL_EXAMPLEDIR}"
)
