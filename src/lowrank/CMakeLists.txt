cmake_minimum_required(VERSION 3.22)

set(BART_SRC_LOWRANK
        batchsvd.c
        batchsvd.h
        lrthresh.c
        lrthresh.h
        svthresh.c
        svthresh.h
)
add_library(lowrank_lib ${BART_SRC_LOWRANK})
