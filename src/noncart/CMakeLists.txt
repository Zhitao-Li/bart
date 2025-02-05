cmake_minimum_required(VERSION 3.22)

set(BART_SRC_NONCART
        gpu_grid.cu
        gpu_grid.h
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
add_library(noncart_lib ${BART_SRC_NONCART})
