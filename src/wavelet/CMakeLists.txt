cmake_minimum_required(VERSION 3.22)

set(BART_SRC_WAVELET_CUDA
        wl3-cuda.cu
        wl3-cuda.h
)

set(BART_SRC_WAVELET
        wavelet.c
        wavelet.h
        wavthresh.c
        wavthresh.h
)
if(CUDA)
    add_library(wavelet_lib ${BART_SRC_WAVELET} ${BART_SRC_WAVELET_CUDA})
else()
    add_library(wavelet_lib ${BART_SRC_WAVELET})
endif()
