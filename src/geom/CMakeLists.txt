cmake_minimum_required(VERSION 3.22)

set(BART_SRC_GEOM
        brain.c
        brain.h
        draw.c
        draw.h
        logo.c
        logo.h
        polygon.c
        polygon.h
        polyhedron.c
        polyhedron.h
        triangle.c
        triangle.h
)
add_library(geom_lib ${BART_SRC_GEOM})
