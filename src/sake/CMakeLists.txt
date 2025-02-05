cmake_minimum_required(VERSION 3.22)

set(BART_SRC_SAKE
        sake.c
        sake.h
)
add_library(sake_lib ${BART_SRC_SAKE})
