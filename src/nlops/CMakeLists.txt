cmake_minimum_required(VERSION 3.22)

set(BART_SRC_NLOPS
        cast.c
        cast.h
        chain.c
        chain.h
        checkpointing.c
        checkpointing.h
        const.c
        const.h
        conv.c
        conv.h
        mi_metric.c
        mi_metric.h
        mri_ops.c
        mri_ops.h
        nlop_jacobian.c
        nlop_jacobian.h
        nlop.c
        nlop.h
        nltest.c
        nltest.h
        norm_inv.c
        norm_inv.h
        someops.c
        someops.h
        stack.c
        stack.h
        tenmul.c
        tenmul.h
        zexp.c
        zexp.h
        zhyperbolic.c
        zhyperbolic.h
)
add_library(nlops_lib ${BART_SRC_NLOPS})
