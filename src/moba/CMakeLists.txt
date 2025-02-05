cmake_minimum_required(VERSION 3.22)

set(BART_SRC_MOBA
        blochfun.c
        blochfun.h
        exp.c
        exp.h
        ir_meco.c
        ir_meco.h
        iter_l1.c
        iter_l1.h
        meco.c
        meco.h
        moba.c
        moba.h
        model_meco.c
        model_meco.h
        model_moba.c
        model_moba.h
        model_T1.c
        model_T1.h
        model_T2.c
        model_T2.h
        optreg.c
        optreg.h
        recon_meco.c
        recon_meco.h
        recon.c
        recon.h
        T1fun.c
        T1fun.h
        T1phyfun.c
        T1phyfun.h
        T2fun.c
        T2fun.h
)
add_library(moba_lib ${BART_SRC_MOBA})
