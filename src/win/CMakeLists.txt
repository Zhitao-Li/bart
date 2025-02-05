set(BART_SRC_WIN
        basename_patch.h
        fmemopen.c
        fmemopen.h
        mman.c
        mman.h
        open_patch.h
        rand_r.h
        vdprintf.h
)
if (BUILDTYPE STREQUAL "MSYS" OR BUILDTYPE STREQUAL "Cygwin")
    add_library(win_lib ${BART_SRC_WIN})
endif()