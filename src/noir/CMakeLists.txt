cmake_minimum_required(VERSION 3.22)

set(BART_SRC_NOIR
        misc.c
        misc.h
        model_net.c
        model_net.h
        model.c
        model.h
        model2.c
        model2.h
        recon.c
        recon.h
        recon2.c
        recon2.h
        utils.c
        utils.h
)
add_library(noir_lib ${BART_SRC_NOIR})
