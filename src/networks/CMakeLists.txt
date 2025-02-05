cmake_minimum_required(VERSION 3.22)

set(BART_SRC_NETWORKS
        cnn.c
        cnn.h
        losses.c
        losses.h
        misc.c
        misc.h
        nlinvnet.c
        nlinvnet.h
        nnet.c
        nnet.h
        reconet.c
        reconet.h
        tf.c
        tf.h
        unet.c
        unet.h
)
add_library(networks_lib ${BART_SRC_NETWORKS})
