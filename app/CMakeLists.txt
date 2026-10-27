project(RSScriptManagerApp VERSION 1.0 LANGUAGES CXX)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

# "INTERFACE_QT_MAJOR_VERSION of Qt5::Core does not agree with QT_MAJOR_VERSION for MYWeldApp"
set(QT_VERSION_MAJOR 5)
find_package(Qt5 REQUIRED COMPONENTS Core Gui Widgets)

file(GLOB_RECURSE PROJECT_SOURCES 
    ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/src/*.h
    ${CMAKE_CURRENT_SOURCE_DIR}/src/*.hpp)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src)

add_executable(${PROJECT_NAME} WIN32 ${PROJECT_SOURCES})

# Qt
target_link_libraries(${PROJECT_NAME} PUBLIC Qt5::Core Qt5::Gui Qt5::Widgets)
if(WIN32)
	target_link_libraries(${PROJECT_NAME} PRIVATE Qt5::WinMain)
endif()

if(WIN32)
	target_link_libraries(${PROJECT_NAME} PRIVATE Dbghelp)
	target_compile_options(${PROJECT_NAME} PRIVATE $<$<CONFIG:Release>:/Zi>)
	target_link_options(${PROJECT_NAME} PRIVATE $<$<CONFIG:Release>:/DEBUG>)
endif()

# nlohmann
target_include_directories(${PROJECT_NAME} PUBLIC ${PROJECT_ROOT_DIR}/thirdParty/nlohmann)

# curl
if(CMAKE_SYSTEM_NAME STREQUAL "Windows")
    target_include_directories(${PROJECT_NAME} PRIVATE ${PROJECT_ROOT_DIR}/thirdParty/curl/include)
    target_link_directories(${PROJECT_NAME} PRIVATE ${PROJECT_ROOT_DIR}/thirdParty/curl/lib/windows)
    target_link_libraries(${PROJECT_NAME} PRIVATE libcurl)
elseif(CMAKE_SYSTEM_NAME STREQUAL "Linux")
    target_link_libraries(${PROJECT_NAME} PRIVATE ${CURL_LIBRARIES})
endif()