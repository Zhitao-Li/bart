cmake_minimum_required(VERSION 3.22)

set(BART_SRC_WAVELET
        wavelet.c
        wavelet.h
        wavthresh.c
        wavthresh.h
        wl3-cuda.cu
        wl3-cuda.h
)
add_library(wavelet_lib ${BART_SRC_WAVELET})
