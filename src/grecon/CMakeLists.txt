cmake_minimum_required(VERSION 3.22)

set(BART_SRC_GRECON
        italgo.c
        italgo.h
        losses.c
        losses.h
        network.c
        network.h
        opt_iter6.c
        opt_iter6.h
        optreg.c
        optreg.h
)
add_library(grecon_lib ${BART_SRC_GRECON})
