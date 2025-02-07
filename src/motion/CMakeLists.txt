cmake_minimum_required(VERSION 3.22)

set(BART_SRC_MOTION_CUDA
        gpu_interpolate.cu
        gpu_interpolate.h
)

set(BART_SRC_MOTION
        affine.c
        affine.h
        displacement.c
        displacement.h
        interpolate.c
        interpolate.h
        opticalflow.c
        opticalflow.h
        pyramide.c
        pyramide.h
        syn.c
        syn.h
)
if(CUDA)
    add_library(motion_lib ${BART_SRC_MOTION} ${BART_SRC_MOTION_CUDA})
else()
    add_library(motion_lib ${BART_SRC_MOTION})
endif()
