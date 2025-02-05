cmake_minimum_required(VERSION 3.22)

set(BART_SRC_ISMRM
        read.c
        read.h
        xml_wrapper.cc
        xml_wrapper.h
)
if (ISMRMRD)
    add_library(ismrm_lib ${BART_SRC_ISMRM})
endif()
