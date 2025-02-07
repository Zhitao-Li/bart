cmake_minimum_required(VERSION 3.22)

set(BART_SRC_CALIB_CUDA
        calibcu.cu
        calibcu.h
)

set(BART_SRC_CALIB
        bin.c
        bin.h
        calib.c
        calib.h
        calmat.c
        calmat.h
        cc.c
        cc.h
        delays.c
        delays.h
        direct.c
        direct.h
        estvar.c
        estvar.h
        grog.c
        grog.h
        softweight.c
        softweight.h
        ssa.c
        ssa.h
        walsh.c
        walsh.h
)
if(CUDA)
    add_library(calib_lib ${BART_SRC_CALIB} ${BART_SRC_CALIB_CUDA})
else()
    add_library(calib_lib ${BART_SRC_CALIB})
endif()