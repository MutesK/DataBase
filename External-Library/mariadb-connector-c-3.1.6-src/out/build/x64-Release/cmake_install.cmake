# Install script for directory: D:/DataBase/External Library/mariadb-connector-c-3.1.6-src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/out/install/x64-Release")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xClientPluginsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mariadb/plugin" TYPE MODULE FILES "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/out/build/x64-Release/dialog.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xClientPluginsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mariadb/plugin" TYPE MODULE FILES "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/out/build/x64-Release/client_ed25519.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xClientPluginsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mariadb/plugin" TYPE MODULE FILES "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/out/build/x64-Release/caching_sha2_password.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xClientPluginsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mariadb/plugin" TYPE MODULE FILES "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/out/build/x64-Release/sha256_password.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xClientPluginsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mariadb/plugin" TYPE MODULE FILES "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/out/build/x64-Release/auth_gssapi_client.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xClientPluginsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mariadb/plugin" TYPE MODULE FILES "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/out/build/x64-Release/mysql_clear_password.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xClientPluginsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mariadb/plugin" TYPE MODULE FILES "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/out/build/x64-Release/pvio_npipe.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xClientPluginsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mariadb/plugin" TYPE MODULE FILES "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/out/build/x64-Release/pvio_shmem.dll")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/out/build/x64-Release/include/cmake_install.cmake")
  include("D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/out/build/x64-Release/libmariadb/cmake_install.cmake")
  include("D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/out/build/x64-Release/unittest/mytap/cmake_install.cmake")
  include("D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/out/build/x64-Release/unittest/libmariadb/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "D:/DataBase/External Library/mariadb-connector-c-3.1.6-src/out/build/x64-Release/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
