cmake_minimum_required(VERSION 3.22)

set(BART_SRC_NONCART_CUDA
        gpu_grid.cu
        gpu_grid.h
)

set(BART_SRC_NONCART
        grid.c
        grid.h
        nudft.c
        nudft.h
        nufft_chain.c
        nufft_chain.h
        nufft_priv.h
        nufft.c
        nufft.h
        precond.c
        precond.h
        traj.c
        traj.h
)
if(CUDA)
    add_library(noncart_lib ${BART_SRC_NONCART} ${BART_SRC_NONCART_CUDA})
else()
    add_library(noncart_lib ${BART_SRC_NONCART})
endif()
