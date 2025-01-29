cmake_minimum_required(VERSION 3.16)

project(QT_Task02 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTORCC ON) # MUST BE ADDED MANUALLY

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appQT_Task02
    main.cpp
)

qt_add_qml_module(appQT_Task02
    URI QT_Task02
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES
        RESOURCES MemesResourceFile.qrc  # added automatically upon creation
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appQT_Task02 PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appQT_Task02
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQT_Task02
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appQT_Task02
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
