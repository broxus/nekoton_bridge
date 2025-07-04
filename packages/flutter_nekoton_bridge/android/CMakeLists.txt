set(LibraryVersion "nekoton_bridge-v3.1.0") # generated; do not edit

# Unlike the Windows & Linux CMakeLists.txt, this Android equivalent is just here
# to download the Android binaries into src/main/jniLibs/ and does not build anything.
# The binary download/extraction is difficult to do concisely in Groovy/Gradle,
# at least across host platforms, so we are just reusing our Linux/Windows logic.

# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

# Download the binaries if they are not already present.
set(LibRoot "${CMAKE_CURRENT_SOURCE_DIR}/src/main/jniLibs")
set(OriginalArchiveName "android.tar.gz")
set(LocalBuildArchivePath "${CMAKE_CURRENT_SOURCE_DIR}/../../../platform-build/${OriginalArchiveName}")
set(ArchivePath "${CMAKE_CURRENT_SOURCE_DIR}/${LibraryVersion}.tar.gz")

if(EXISTS ${LocalBuildArchivePath})
  file(COPY
    ${LocalBuildArchivePath}
    DESTINATION
    ${CMAKE_CURRENT_SOURCE_DIR}
  )
  file(RENAME
    "${CMAKE_CURRENT_SOURCE_DIR}/${OriginalArchiveName}"
    ${ArchivePath}
  )
endif()

if(NOT EXISTS ${ArchivePath})
  file(DOWNLOAD
    "https://github.com/broxus/nekoton_bridge/releases/download/${LibraryVersion}/android.tar.gz"
    ${ArchivePath}
    TLS_VERIFY ON
  )
endif()

# Extract the binaries, overriding any already present.
file(REMOVE_RECURSE ${LibRoot})
file(MAKE_DIRECTORY ${LibRoot})
execute_process(
  COMMAND ${CMAKE_COMMAND} -E tar xzf ${ArchivePath}
  WORKING_DIRECTORY ${LibRoot}
)
