cmake_minimum_required(VERSION 3.22)

add_subdirectory(calib)

add_subdirectory(geom)

add_subdirectory(grecon)

add_subdirectory(ismrm)

add_subdirectory(iter)

add_subdirectory(lapacke)

add_subdirectory(linops)

add_subdirectory(lowrank)

add_subdirectory(misc)

add_subdirectory(moba moba_bin)

add_subdirectory(motion)

add_subdirectory(networks)

add_subdirectory(nlops)

add_subdirectory(nn)

add_subdirectory(noir)

add_subdirectory(noncart)

add_subdirectory(num)

add_subdirectory(python)

add_subdirectory(sake sake_bin)

add_subdirectory(sense)

add_subdirectory(simu)

add_subdirectory(wavelet wavelet_bin)

add_subdirectory(win)

set(BART_SRC
        affinereg.c
        avg.c
        bart_embed_api.h
#        bart.c
        bench.c
        bin.c
        bitmask.c
        bloch.c
        cabs.c
        calc.c
        caldir.c
        calmat.c
        carg.c
        casorati.c
        cc.c
        ccapply.c
        cdf97.c
        circshift.c
        conj.c
        conv.c
        conway.c
        copy.c
        cpyphs.c
        creal.c
        crop.c
        delta.c
        ecalib.c
        ecaltwo.c
        epg.c
        estdelay.c
        estdims.c
        estmotion.c
        estshift.c
        estvar.c
        extract.c
        fakeksp.c
        fft.c
        fftmod.c
        fftrot.c
        fftshift.c
        filter.c
        flatten.c
        flip.c
        fmac.c
        fovshift.c
        grog.c
        homodyne.c
        ictv.c
        index.c
        interpolate.c
        invert.c
#        ismrmrd.c
        itsense.c
        join.c
        looklocker.c
        lrmatrix.c
#        main.c
#        main.h
        mandelbrot.c
#        mat2cfl.c
        measure.c
        mip.c
        mnist.c
        moba.c
        mobafit.c
        morphop.c
        multicfl.c
        ncalib.c
        nlinv.c
        nlinvnet.c
        nlmeans.c
        nnet.c
        noise.c
        normalize.c
        nrmse.c
        nufft.c
        nufftbase.c
        onehotenc.c
        ones.c
        pattern.c
        phantom.c
        pics.c
        pocsense.c
        poisson.c
        pol2mask.c
        poly.c
        psf.c
        pulse.c
        raga.c
        reconet.c
        repmat.c
        reshape.c
        resize.c
        rmfreq.c
        rof.c
        roistat.c
        rovir.c
        rss.c
        rtnlinv.c
        sake.c
        saxpy.c
        scale.c
        sdot.c
        show.c
        signal.c
        sim.c
        slice.c
        spow.c
        sqpics.c
        squeeze.c
        ssa.c
        std.c
        svd.c
        tee.c
        tensorflow.c
        tgv.c
        threshold.c
        toimg.c
        traj.c
        transpose.c
        trx.c
        twixread.c
        upat.c
        var.c
        vec.c
        version.c
        walsh.c
        wave.c
        wavelet.c
        wavepsf.c
        whiten.c
        window.c
        wshfl.c
        zeros.c
        zexp.c
)


include_directories(${CMAKE_CURRENT_SOURCE_DIR})


# Command targets
set(XTARGETS
        show slice crop resize join transpose squeeze flatten zeros ones flip circshift
        extract repmat bitmask reshape version delta copy casorati vec poly index multicfl
        tee trx scale invert conj fmac saxpy sdot spow cpyphs creal carg normalize cdf97
        pattern nrmse mip avg cabs zexp calc fft fftmod fftshift noise bench threshold conv
        rss filter nlmeans mandelbrot wavelet window var std fftrot roistat pol2mask conway
        morphop pics pocsense sqpics itsense nlinv moba nufft nufftbase rof tgv ictv sake
        wave lrmatrix estdims estshift estdelay wavepsf wshfl rtnlinv mobafit grog ecalib
        ecaltwo caldir walsh cc ccapply rovir calmat svd estvar whiten rmfreq ssa bin psf
        ncalib homodyne poisson twixread fakeksp looklocker upat fovshift phantom traj
        signal epg sim raga toimg reconet nnet onehotenc measure mnist tensorflow nlinvnet
        affinereg interpolate estmotion
)

set(MODULES_pics
        grecon_lib
        sense_lib
        motion_lib
        iter_lib
        linops_lib
        wavelet_lib
        lowrank_lib
        noncart_lib
        nn_lib
        nlops_lib
)

set(MODULES_sqpics
        sense_lib
        iter_lib
        linops_lib
        wavelet_lib
        lowrank_lib
        noncart_lib
        linops_lib
)

set(MODULES_pocsense
        sense_lib
        iter_lib
        linops_lib
        wavelet_lib
)

set(MODULES_nlinv
        noir_lib
        grecon_lib
        wavelet_lib
        lowrank_lib
        nn_lib
        iter_lib
        nlops_lib
        linops_lib
        noncart_lib
)

set(MODULES_ncalib
        noir_lib
        grecon_lib
        wavelet_lib
        lowrank_lib
        nn_lib
        iter_lib
        nlops_lib
        linops_lib
        noncart_lib
)

set(MODULES_rtnlinv
        noir_lib
        iter_lib
        nlops_lib
        linops_lib
        noncart_lib
)

set(MODULES_moba
        moba_lib
        noir_lib
        nn_lib
        nlops_lib
        linops_lib
        wavelet_lib
        noncart_lib
        simu_lib
        grecon_lib
        lowrank_lib
        linops_lib
        iter_lib
        nn_lib
)

set(MODULES_mobafit
        moba_lib
        nlops_lib
        linops_lib
        simu_lib
        iter_lib
        noir_lib
)

set(MODULES_bpsense
        sense_lib
        noncart_lib
        iter_lib
        linops_lib
        wavelet_lib
)

set(MODULES_itsense
        iter_lib
        linops_lib
)

set(MODULES_ecalib
        calib_lib
        linops_lib
)

set(MODULES_ecaltwo
        calib_lib
        linops_lib
)

set(MODULES_estdelay
        calib_lib
)

set(MODULES_caldir
        calib_lib
)

set(MODULES_walsh
        calib_lib
)

set(MODULES_calmat
        calib_lib
)

set(MODULES_cc
        calib_lib
        linops_lib
)

set(MODULES_ccapply
        calib_lib
        linops_lib
)

set(MODULES_estvar
        calib_lib
)

set(MODULES_nufft
        noncart_lib
        iter_lib
        linops_lib
)

set(MODULES_rof
        iter_lib
        linops_lib
)

set(MODULES_tgv
        iter_lib
        linops_lib
)

set(MODULES_ictv
        iter_lib
        linops_lib
)

set(MODULES_denoise
        grecon_lib
        iter_lib
        linops_lib
        wavelet_lib
        lowrank_lib
        noncart_lib
        nn_lib
        nlops_lib
)

set(MODULES_bench
        wavelet_lib
        linops_lib
)

set(MODULES_phantom
        simu_lib
        geom_lib
)

set(MODULES_bart
        box_lib
        grecon_lib
        sense_lib
        noir_lib
        iter_lib
        linops_lib
        wavelet_lib
        lowrank_lib
        noncart_lib
        calib_lib
        simu_lib
        sake_lib
        nlops_lib
        networks_lib
        noir_lib
        nn_lib
        iter_lib
        moba_lib
        geom_lib
        nn_lib
        motion_lib
        nlops_lib
)

set(MODULES_sake
        sake_lib
)

set(MODULES_traj
        noncart_lib
)

set(MODULES_raga
        noncart_lib
)

set(MODULES_wave
        iter_lib
        wavelet_lib
        linops_lib
        lowrank_lib
)

set(MODULES_threshold
        lowrank_lib
        iter_lib
        linops_lib
        wavelet_lib
)

set(MODULES_fakeksp
        sense_lib
        linops_lib
)

set(MODULES_lrmatrix
        lowrank_lib
        iter_lib
        linops_lib
        nlops_lib
)

set(MODULES_estdims
)

set(MODULES_ismrmrd
        ismrm_lib
)

set(MODULES_wavelet
        linops_lib
        wavelet_lib
)

set(MODULES_wshfl
        grecon_lib
        sense_lib
        iter_lib
        linops_lib
        wavelet_lib
        lowrank_lib
        noncart_lib
        nlops_lib
        nn_lib
        nlops_lib
)

set(MODULES_ssa
        calib_lib
)

set(MODULES_bin
        calib_lib
)

set(MODULES_signal
        simu_lib
)

set(MODULES_pol2mask
        geom_lib
)

set(MODULES_epg
        simu_lib
)

set(MODULES_reconet
        grecon_lib
        networks_lib
        noncart_lib
        nn_lib
        nlops_lib
        linops_lib
        iter_lib
)

set(MODULES_mnist
        networks_lib
        nn_lib
        nlops_lib
        linops_lib
        iter_lib
)

set(MODULES_nnet
        grecon_lib
        networks_lib
        noncart_lib
        nn_lib
        nlops_lib
        linops_lib
        iter_lib
)

set(MODULES_tensorflow
        nn_lib
        nlops_lib
        linops_lib
        iter_lib
)

set(MODULES_measure
        grecon_lib
        networks_lib
        noncart_lib
        nn_lib
        nlops_lib
        linops_lib
        iter_lib
)

set(MODULES_onehotenc
        nn_lib
)

set(MODULES_sim
        simu_lib
)

set(MODULES_morphop
        nlops_lib
        linops_lib
        geom_lib
)

set(MODULES_psf
        noncart_lib
        linops_lib
)

set(MODULES_nlinvnet
        networks_lib
        noir_lib
        iter_lib
        nn_lib
        nlops_lib
        linops_lib
        noncart_lib
        grecon_lib
        networks_lib
        sense_lib
        iter_lib
        linops_lib
        wavelet_lib
        lowrank_lib
        noncart_lib
        nlops_lib
        nn_lib
)

set(MODULES_grog
        calib_lib
)

set(MODULES_affinereg
        motion_lib
        iter_lib
        nlops_lib
        linops_lib
)

set(MODULES_estmotion
        motion_lib
        nn_lib
        iter_lib
        nlops_lib
        linops_lib
)

set(MODULES_interpolate
        motion_lib
        iter_lib
        nlops_lib
        linops_lib
)

foreach(target IN LISTS XTARGETS)
    add_executable(${target}
            main.c
            ${target}.c
    )
    target_compile_definitions(${target} PRIVATE -Dmain_real=main_${target})
    target_link_libraries(${target} PRIVATE
            ${MODULES_${target}}
            num_lib
            misc_lib
            num_lib
            misc_lib
            ${LIBRARIES}
    )
endforeach()



add_executable(${PROJECT_NAME}
        ${BART_SRC}
        main.c
        main.h
        bart.c
)

list(JOIN XTARGETS ", " JOINED_XTARGETS)
set(MAIN_LIST_VALUE "${JOINED_XTARGETS}, ()")

target_compile_options(${PROJECT_NAME} PRIVATE
        $<$<COMPILE_LANG_AND_ID:C,GNU>:-DMAIN_LIST=${MAIN_LIST_VALUE}>)
target_compile_options(${PROJECT_NAME} PRIVATE -Dmain_real=main_${PROJECT_NAME})

target_link_libraries(${PROJECT_NAME} PRIVATE
        lowrank_lib
        noncart_lib
        networks_lib
        simu_lib
        sense_lib
        num_lib
        nn_lib
        calib_lib
        geom_lib
        grecon_lib
        iter_lib
#        lapacke_lib
        linops_lib
        misc_lib
        moba_lib
        motion_lib
        nlops_lib
        noir_lib
        python_lib
        sake_lib
        wavelet_lib
        ${LIBRARIES}
)

get_property(isMultiConfig GLOBAL PROPERTY GENERATOR_IS_MULTI_CONFIG)
set(RELEASE_BIN_DIR "${PROJECT_SOURCE_DIR}/commands/")

if(NOT isMultiConfig)  # Check if not multi-config
    # Override output directories if building in Release mode
    if(CMAKE_BUILD_TYPE STREQUAL "Release")
        set(EXECUTABLE_OUTPUT_PATH ${RELEASE_BIN_DIR})
    endif()
endif()
