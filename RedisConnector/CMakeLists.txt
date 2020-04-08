
CMAKE_MINIMUM_REQUIRED(VERSION 3.4.0)
PROJECT(RedisConnector)


ADD_SUBDIRECTORY(../External-Library/hiredis-master ./build/hiredis)

ADD_DEFINITIONS("-Wall -std=c++14")

ADD_SUBDIRECTORY(../DataBase ./build/DataBase)

ADD_EXECUTABLE(${PROJECT_NAME} RedisConnector.cpp)
