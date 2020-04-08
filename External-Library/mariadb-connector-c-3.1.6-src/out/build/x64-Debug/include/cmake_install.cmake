# Install script for directory: D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/out/install/x64-Debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mariadb" TYPE FILE FILES
    "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/include/mariadb_com.h"
    "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/include/mysql.h"
    "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/include/mariadb_stmt.h"
    "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/include/ma_pvio.h"
    "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/include/ma_tls.h"
    "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/out/build/x64-Debug/include/mariadb_version.h"
    "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/include/ma_list.h"
    "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/include/errmsg.h"
    "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/include/mariadb_dyncol.h"
    "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/include/mariadb_ctype.h"
    "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/include/mariadb_rpl.h"
    "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/include/mysqld_error.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mariadb/mysql" TYPE FILE FILES
    "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/include/mysql/client_plugin.h"
    "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/include/mysql/plugin_auth_common.h"
    "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/include/mysql/plugin_auth.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mariadb/mariadb" TYPE FILE FILES "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/include/mariadb/ma_io.h")
endif()

