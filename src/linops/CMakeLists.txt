cmake_minimum_required(VERSION 3.22)

set(BART_SRC_LINOPS
        decompose_complex.c
        decompose_complex.h
        finite_diff.c
        finite_diff.h
        fmac.c
        fmac.h
        grad.c
        grad.h
        linop.c
        linop.h
        lintest.c
        lintest.h
        realval.c
        realval.h
        someops.c
        someops.h
        sum.c
        sum.h
        waveop.c
        waveop.h
)
add_library(linops_lib ${BART_SRC_LINOPS})
