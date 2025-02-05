cmake_minimum_required(VERSION 3.22)

set(BART_SRC_SENSE
        model.c
        model.h
        optcom.c
        optcom.h
        pocs.c
        pocs.h
        recon.c
        recon.h
)
add_library(sense_lib ${BART_SRC_SENSE})
