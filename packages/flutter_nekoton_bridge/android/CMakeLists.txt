set(LibraryVersion "nekoton_bridge-v5.1.0") # generated; do not edit

# Unlike the Windows & Linux CMakeLists.txt, this Android equivalent is just here
# to download the Android binaries into src/main/jniLibs/ and does not build anything.
# The binary download/extraction is difficult to do concisely in Groovy/Gradle,
# at least across host platforms, so we are just reusing our Linux/Windows logic.

# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

# Root where extracted .so files will live
set(LibRoot "${CMAKE_CURRENT_SOURCE_DIR}/src/main/jniLibs")

# Original published archive name
set(OriginalArchiveName "android.tar.gz")

# Allow env override for local dev build (parallel to iOS NEKOTON_BRIDGE_ZIP)
set(EnvOverrideArchive "$ENV{NEKOTON_BRIDGE_ANDROID_ARCHIVE}")

# Local build (not published) artifact path
set(LocalBuildArchivePath "${CMAKE_CURRENT_SOURCE_DIR}/../../../platform-build/${OriginalArchiveName}")

# Archive stored alongside this CMakeLists after copy/download
set(ArchivePath "${CMAKE_CURRENT_SOURCE_DIR}/${LibraryVersion}.tar.gz")

# Prefer explicit env override
if(EnvOverrideArchive AND EXISTS "${EnvOverrideArchive}")
  message(STATUS "Using env override archive: ${EnvOverrideArchive}")
  file(COPY "${EnvOverrideArchive}" DESTINATION "${CMAKE_CURRENT_SOURCE_DIR}")
  file(RENAME "${CMAKE_CURRENT_SOURCE_DIR}/${OriginalArchiveName}" "${ArchivePath}")
elseif(EXISTS "${LocalBuildArchivePath}")
  message(STATUS "Using local build archive: ${LocalBuildArchivePath}")
  file(COPY "${LocalBuildArchivePath}" DESTINATION "${CMAKE_CURRENT_SOURCE_DIR}")
  file(RENAME "${CMAKE_CURRENT_SOURCE_DIR}/${OriginalArchiveName}" "${ArchivePath}")
endif()

# Download if still missing
if(NOT EXISTS "${ArchivePath}")
  set(DownloadURL "https://github.com/broxus/nekoton_bridge/releases/download/${LibraryVersion}/android.tar.gz")
  message(STATUS "Downloading nekoton bridge archive from ${DownloadURL}")
  file(DOWNLOAD
    "${DownloadURL}"
    "${ArchivePath}"
    TLS_VERIFY ON
    SHOW_PROGRESS
    STATUS dl_status
    LOG dl_log
    TIMEOUT 60
  )
  list(GET dl_status 0 dl_code)
  if(NOT dl_code EQUAL 0)
    message(FATAL_ERROR "Download failed (code ${dl_code}). Status: ${dl_status}\nLog:\n${dl_log}")
  endif()
endif()

# Use a stamp file to avoid redundant re-extraction
set(StampFile "${LibRoot}/.extracted-${LibraryVersion}.stamp")

if(NOT EXISTS "${StampFile}")
  message(STATUS "Extracting archive into ${LibRoot}")
  file(REMOVE_RECURSE "${LibRoot}")
  file(MAKE_DIRECTORY "${LibRoot}")
  execute_process(
    COMMAND "${CMAKE_COMMAND}" -E tar xzf "${ArchivePath}"
    WORKING_DIRECTORY "${LibRoot}"
    RESULT_VARIABLE tar_result
  )
  if(NOT tar_result EQUAL 0)
    message(FATAL_ERROR "Extraction failed with code ${tar_result}")
  endif()

  # Basic architecture presence checks (adjust if set differs)
  foreach(arch IN ITEMS armeabi-v7a arm64-v8a x86_64 x86)
    if(NOT EXISTS "${LibRoot}/${arch}/libflutter_nekoton_bridge.so")
      message(FATAL_ERROR "Missing expected library for ${arch}: ${LibRoot}/${arch}/libflutter_nekoton_bridge.so")
    endif()
  endforeach()

  file(WRITE "${StampFile}" "${LibraryVersion}\n")
else()
  message(STATUS "Archive already extracted (stamp present).")
endif()
