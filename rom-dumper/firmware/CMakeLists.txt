# Generated Cmake Pico project file

cmake_minimum_required(VERSION 3.13)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(PICO_COPY_TO_RAM 1)

# initalize pico_sdk from installed location
# (note this can come from environment, CMake cache etc)
set(PICO_SDK_PATH "/tree/downloaded_tools/pico/pico-sdk")

# Pull in Raspberry Pi Pico SDK (must be before project)
include(pico_sdk_import.cmake)
#include(pico_extras_import.cmake)

project(pps4-rom-dumper C CXX ASM)

# Initialise the Raspberry Pi Pico SDK
pico_sdk_init()

# SD FAT LIB
#add_subdirectory(../no-OS-FatFS-SD-SPI-RPi-Pico/FatFs_SPI build)

# Add executable. Default name is the project name, version 0.1

add_executable(pps4-rom-dumper pps4-rom-dumper.c )

pico_set_program_name(pps4-rom-dumper "pps4-rom-dumper")
pico_set_program_version(pps4-rom-dumper "0.1")

#pico_enable_stdio_uart(pps4-rom-dumper 0)
pico_enable_stdio_usb(pps4-rom-dumper 1)

# Add the standard library to the build
target_link_libraries(pps4-rom-dumper pico_stdlib)

#IF (NOT DEFINED N_SD_CARDS)
#    SET(N_SD_CARDS 1)
#ENDIF()
#target_compile_definitions(pps4-rom-dumper PUBLIC DEBUG N_SD_CARDS=${N_SD_CARDS})

# Add any user requested libraries
target_link_libraries(pps4-rom-dumper

        )

pico_add_extra_outputs(pps4-rom-dumper)

