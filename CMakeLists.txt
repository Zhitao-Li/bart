cmake_minimum_required(VERSION 3.22)

project(bart CXX C)


option(DEBUG "Build with debug symbols" OFF)
option(OPENBLAS "Use OpenBLAS" OFF)
option(CUDA "Enable CUDA support" OFF)
option(OMP "Enable OpenMP" ON)
option(MPI "Enable MPI support" OFF)
option(FFTWTHREADS "Use threaded FFTW" ON)
option(ISMRMRD "Enable ISMRMRD support" OFF)
option(PNG "Enable PNG support" ON)
option(TENSORFLOW "Enable TensorFlow support" OFF)


# Configure compiler flags
set(CMAKE_C_STANDARD 17)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_C_VISIBILITY_PRESET hidden)
set(CMAKE_CXX_VISIBILITY_PRESET hidden)


if(DEBUG)
    add_compile_options(-g -Og)
else()
    add_compile_options(-O2)
endif()


add_compile_options(
        -Wall
        -Wextra
        -Wmissing-prototypes
        -Wincompatible-pointer-types
        -Wsign-conversion
)

if(WERROR)
    add_compile_options(-Werror)
endif()

# Dependency handling
find_package(FFTW3 REQUIRED)
find_package(BLAS REQUIRED)
find_package(LAPACK REQUIRED)

# Configure include directories
include_directories(
        src
        ${CMAKE_CURRENT_SOURCE_DIR}/src/
        ${FFTW_INCLUDE_DIRS}
        ${BLAS_INCLUDE_DIRS}
)

# Library definitions
set(LIBRARIES
        ${FFTW_LIBRARIES}
        ${BLAS_LIBRARIES}
        ${LAPACK_LIBRARIES}
        fftw3f
        m
)

if(OPENBLAS)
    add_compile_definitions(USE_OPENBLAS)
endif()

if(CUDA)
    enable_language(CUDA)
    set(CMAKE_CUDA_STANDARD 14)
    find_package(CUDAToolkit REQUIRED)
    add_compile_definitions(USE_CUDA)

    list(APPEND LIBRARIES
            CUDA::cudart
            CUDA::cufft
            CUDA::cublas
    )
endif()

if(OMP)
    find_package(OpenMP REQUIRED)
    add_compile_options(${OpenMP_C_FLAGS})
    add_link_options(${OpenMP_C_FLAGS})
endif()

if (FFTWTHREADS)
    add_compile_definitions(FFTWTHREADS)
    list(APPEND LIBRARIES fftw3f_threads)
endif()

if(ISMRMRD)
    find_package(ISMRMRD REQUIRED)
    include_directories(${ISMRMRD_INCLUDE_DIR})
    link_directories(${ISMRMRD_LIB_DIR})
    list(APPEND LIBRARIES ${ISMRMRD_LIBRARIES})
endif()

if (PNG)
    find_package(PNG REQUIRED)
    include_directories(${PNG_INCLUDE_DIR})
    list(APPEND LIBRARIES ${PNG_LIBRARIES})
endif()

if(TENSORFLOW)
    find_package(TensorFlow REQUIRED)
endif()

# Platform detection
#if(APPLE)
#    set(BUILDTYPE "MacOSX")
#elseif(CYGWIN)
#    set(BUILDTYPE "Cygwin")
#elseif(MSYS)
#    set(BUILDTYPE "MSYS")
#else()
#    set(BUILDTYPE "Linux")
#endif()

add_subdirectory(src)
