cmake_minimum_required(VERSION 2.8.12)

project(hs)

include_directories(json)

add_executable(hs main.cpp HomeSecurity.cpp Parser.cpp jsoncpp.cpp)