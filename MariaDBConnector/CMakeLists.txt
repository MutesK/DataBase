
CMAKE_MINIMUM_REQUIRED(VERSION 3.4.0)
PROJECT(MariaDBConnector)

ADD_DEFINITIONS("-Wall -std=c++14")

# Dependency DIRs
ADD_SUBDIRECTORY(../DataBase ./build/DataBase)
ADD_SUBDIRECTORY(../External-Library/mariadb-connector-c-3.1.6-src ./build/mariadb)

ADD_EXECUTABLE(${PROJECT_NAME} main.cpp)

