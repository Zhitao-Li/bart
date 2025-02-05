cmake_minimum_required(VERSION 3.22)

set(BART_SRC_PYTHON
        pyBART_docstrings.c
        pyBART_pybind11_patch.h
)
add_library(python_lib ${BART_SRC_PYTHON})
