# DataBase 프로젝트는 추상계층 라이브러리

CMAKE_MINIMUM_REQUIRED(VERSION 3.4.0)

PROJECT(DataBase)

SET(SOURCE_DIR .)


ADD_DEFINITIONS("-Wall -std=c++14")
ADD_LIBRARY(DataBase STATIC DBCommand.cpp DBConnection.cpp DBConnectionService.cpp
        DBResultSet.cpp)
