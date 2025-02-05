cmake_minimum_required(VERSION 3.22)

set(BART_SRC_SIMU
        biot_savart.c
        biot_savart.h
        bloch.c
        bloch.h
        coil.c
        coil.h
        crb.c
        crb.h
        epg.c
        epg.h
        phantom.c
        phantom.h
        pulse.c
        pulse.h
        sens.c
        sens.h
        shape.c
        shape.h
        shepplogan.c
        shepplogan.h
        signals.c
        signals.h
        simulation.c
        simulation.h
        tsegf.c
        tsegf.h
)
add_library(simu_lib ${BART_SRC_SIMU})
