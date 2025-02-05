cmake_minimum_required(VERSION 3.22)

set(BART_SRC_CALIB
        calib/bin.c
        calib/bin.h
        calib/calib.c
        calib/calib.h
        calib/calibcu.cu
        calib/calibcu.h
        calib/calmat.c
        calib/calmat.h
        calib/cc.c
        calib/cc.h
        calib/delays.c
        calib/delays.h
        calib/direct.c
        calib/direct.h
        calib/estvar.c
        calib/estvar.h
        calib/grog.c
        calib/grog.h
        calib/softweight.c
        calib/softweight.h
        calib/ssa.c
        calib/ssa.h
        calib/walsh.c
        calib/walsh.h
)
add_library(calib_lib ${BART_SRC_CALIB})


set(BART_SRC_GEOM
        geom/brain.c
        geom/brain.h
        geom/draw.c
        geom/draw.h
        geom/logo.c
        geom/logo.h
        geom/polygon.c
        geom/polygon.h
        geom/polyhedron.c
        geom/polyhedron.h
        geom/triangle.c
        geom/triangle.h
)
add_library(geom_lib ${BART_SRC_GEOM})


set(BART_SRC_GRECON
        grecon/italgo.c
        grecon/italgo.h
        grecon/losses.c
        grecon/losses.h
        grecon/network.c
        grecon/network.h
        grecon/opt_iter6.c
        grecon/opt_iter6.h
        grecon/optreg.c
        grecon/optreg.h
)
add_library(grecon_lib ${BART_SRC_GRECON})


set(BART_SRC_ISMRM
        ismrm/read.c
        ismrm/read.h
        ismrm/xml_wrapper.cc
        ismrm/xml_wrapper.h
)
if (ISMRMRD)
    add_library(ismrm_lib ${BART_SRC_ISMRM})
endif()


set(BART_SRC_ITER
        iter/admm.c
        iter/admm.h
        iter/asl.c
        iter/asl.h
        iter/batch_gen.c
        iter/batch_gen.h
        iter/italgos.c
        iter/italgos.h
        iter/iter_dump.c
        iter/iter_dump.h
        iter/iter.c
        iter/iter.h
        iter/iter2.c
        iter/iter2.h
        iter/iter3.c
        iter/iter3.h
        iter/iter4.c
        iter/iter4.h
        iter/iter5.c
        iter/iter5.h
        iter/iter6_ops.c
        iter/iter6_ops.h
        iter/iter6.c
        iter/iter6.h
        iter/itop.c
        iter/itop.h
        iter/lad.c
        iter/lad.h
        iter/lsqr.c
        iter/lsqr.h
        iter/misc.c
        iter/misc.h
        iter/monitor_iter6.c
        iter/monitor_iter6.h
        iter/monitor.c
        iter/monitor.h
        iter/niht.c
        iter/niht.h
        iter/proj.c
        iter/proj.h
        iter/prox.c
        iter/prox.h
        iter/prox2.c
        iter/prox2.h
        iter/tgv.c
        iter/tgv.h
        iter/thresh.c
        iter/thresh.h
        iter/vec.c
        iter/vec.h
)
add_library(iter_lib ${BART_SRC_ITER})


set(BART_SRC_LAPACKE
        lapacke/lapacke_cge_nancheck.c
        lapacke/lapacke_cge_trans.c
        lapacke/lapacke_cgees_work.c
        lapacke/lapacke_cgees.c
        lapacke/lapacke_cgesdd_work.c
        lapacke/lapacke_cgesdd.c
        lapacke/lapacke_cgesvd_work.c
        lapacke/lapacke_cgesvd.c
        lapacke/lapacke_che_nancheck.c
        lapacke/lapacke_che_trans.c
        lapacke/lapacke_cheev_work.c
        lapacke/lapacke_cheev.c
        lapacke/lapacke_chegv_work.c
        lapacke/lapacke_chegv.c
        lapacke/lapacke_cpo_nancheck.c
        lapacke/lapacke_cpo_trans.c
        lapacke/lapacke_cpotrf_work.c
        lapacke/lapacke_cpotrf.c
        lapacke/lapacke_ctr_nancheck.c
        lapacke/lapacke_ctr_trans.c
        lapacke/lapacke_ctrsyl_work.c
        lapacke/lapacke_ctrsyl.c
        lapacke/lapacke_ctrtri_work.c
        lapacke/lapacke_ctrtri.c
        lapacke/lapacke_ctrtrs_work.c
        lapacke/lapacke_ctrtrs.c
        lapacke/lapacke_lsame.c
        lapacke/lapacke_mangling.h
        lapacke/lapacke_nancheck.c
        lapacke/lapacke_utils.h
        lapacke/lapacke_xerbla.c
        lapacke/lapacke_zge_nancheck.c
        lapacke/lapacke_zge_trans.c
        lapacke/lapacke_zgees_work.c
        lapacke/lapacke_zgees.c
        lapacke/lapacke_zgesdd_work.c
        lapacke/lapacke_zgesdd.c
        lapacke/lapacke_zhe_nancheck.c
        lapacke/lapacke_zhe_trans.c
        lapacke/lapacke_zheev_work.c
        lapacke/lapacke_zheev.c
        lapacke/lapacke_ztr_nancheck.c
        lapacke/lapacke_ztr_trans.c
        lapacke/lapacke.h
)
add_library(lapacke_lib ${BART_SRC_LAPACKE})


set(BART_SRC_LINOPS
        linops/decompose_complex.c
        linops/decompose_complex.h
        linops/finite_diff.c
        linops/finite_diff.h
        linops/fmac.c
        linops/fmac.h
        linops/grad.c
        linops/grad.h
        linops/linop.c
        linops/linop.h
        linops/lintest.c
        linops/lintest.h
        linops/realval.c
        linops/realval.h
        linops/someops.c
        linops/someops.h
        linops/sum.c
        linops/sum.h
        linops/waveop.c
        linops/waveop.h
)
add_library(linops_lib ${BART_SRC_LINOPS})


set(BART_SRC_LOWRANK
        lowrank/batchsvd.c
        lowrank/batchsvd.h
        lowrank/lrthresh.c
        lowrank/lrthresh.h
        lowrank/svthresh.c
        lowrank/svthresh.h
)
add_library(lowrank_lib ${BART_SRC_LOWRANK})


set(BART_SRC_MISC
        misc/bench.c
        misc/bench.h
        misc/cppmap.h
        misc/cppwrap.h
        misc/debug.c
        misc/debug.h
        misc/dicom.c
        misc/dicom.h
        misc/graph.c
        misc/graph.h
        misc/io.c
        misc/io.h
        misc/list.c
        misc/list.h
        misc/lock.c
        misc/lock.h
        misc/memcfl.c
        misc/memcfl.h
        misc/misc.c
        misc/misc.h
        misc/mmio.c
        misc/mmio.h
        misc/mri2.c
        misc/mri.h
        misc/nested.h
        misc/opts.c
        misc/opts.h
#        misc/Orchestra.cc
        misc/pd.c
        misc/pd.h
        misc/png.c
        misc/png.h
        misc/resize.c
        misc/resize.h
        misc/shrdptr.c
        misc/shrdptr.h
        misc/stream_protocol.c
        misc/stream_protocol.h
        misc/stream.c
        misc/stream.h
        misc/subpixel.c
        misc/subpixel.h
        misc/tree.c
        misc/tree.h
        misc/types.h
        misc/utils.c
        misc/utils.h
        misc/version.c
        misc/version.h
        misc/ya_getopt.c
        misc/ya_getopt.h
)
add_library(misc_lib ${BART_SRC_MISC})


set(BART_SRC_MOBA
        moba/blochfun.c
        moba/blochfun.h
        moba/exp.c
        moba/exp.h
        moba/ir_meco.c
        moba/ir_meco.h
        moba/iter_l1.c
        moba/iter_l1.h
        moba/meco.c
        moba/meco.h
        moba/moba.c
        moba/moba.h
        moba/model_meco.c
        moba/model_meco.h
        moba/model_moba.c
        moba/model_moba.h
        moba/model_T1.c
        moba/model_T1.h
        moba/model_T2.c
        moba/model_T2.h
        moba/optreg.c
        moba/optreg.h
        moba/recon_meco.c
        moba/recon_meco.h
        moba/recon.c
        moba/recon.h
        moba/T1fun.c
        moba/T1fun.h
        moba/T1phyfun.c
        moba/T1phyfun.h
        moba/T2fun.c
        moba/T2fun.h
)
add_library(moba_lib ${BART_SRC_MOBA})


set(BART_SRC_MOTION
        motion/affine.c
        motion/affine.h
        motion/displacement.c
        motion/displacement.h
        motion/gpu_interpolate.cu
        motion/gpu_interpolate.h
        motion/interpolate.c
        motion/interpolate.h
        motion/opticalflow.c
        motion/opticalflow.h
        motion/pyramide.c
        motion/pyramide.h
        motion/syn.c
        motion/syn.h
)
add_library(motion_lib ${BART_SRC_MOTION})


set(BART_SRC_NETWORKS
        networks/cnn.c
        networks/cnn.h
        networks/losses.c
        networks/losses.h
        networks/misc.c
        networks/misc.h
        networks/nlinvnet.c
        networks/nlinvnet.h
        networks/nnet.c
        networks/nnet.h
        networks/reconet.c
        networks/reconet.h
        networks/tf.c
        networks/tf.h
        networks/unet.c
        networks/unet.h
)
add_library(networks_lib ${BART_SRC_NETWORKS})


set(BART_SRC_NLOPS
        nlops/cast.c
        nlops/cast.h
        nlops/chain.c
        nlops/chain.h
        nlops/checkpointing.c
        nlops/checkpointing.h
        nlops/const.c
        nlops/const.h
        nlops/conv.c
        nlops/conv.h
        nlops/mi_metric.c
        nlops/mi_metric.h
        nlops/mri_ops.c
        nlops/mri_ops.h
        nlops/nlop_jacobian.c
        nlops/nlop_jacobian.h
        nlops/nlop.c
        nlops/nlop.h
        nlops/nltest.c
        nlops/nltest.h
        nlops/norm_inv.c
        nlops/norm_inv.h
        nlops/someops.c
        nlops/someops.h
        nlops/stack.c
        nlops/stack.h
        nlops/tenmul.c
        nlops/tenmul.h
        nlops/zexp.c
        nlops/zexp.h
        nlops/zhyperbolic.c
        nlops/zhyperbolic.h
)
add_library(nlops_lib ${BART_SRC_NLOPS})


set(BART_SRC_NN
        nn/activation_nn.c
        nn/activation_nn.h
        nn/activation.c
        nn/activation.h
        nn/batchnorm.c
        nn/batchnorm.h
        nn/chain.c
        nn/chain.h
        nn/const.c
        nn/const.h
        nn/data_list.c
        nn/data_list.h
        nn/init.c
        nn/init.h
        nn/layers_nn.c
        nn/layers_nn.h
        nn/layers.c
        nn/layers.h
        nn/losses_nn.c
        nn/losses_nn.h
        nn/losses.c
        nn/losses.h
        nn/misc.c
        nn/misc.h
        nn/nn_ops.c
        nn/nn_ops.h
        nn/nn.c
        nn/nn.h
        nn/rbf.c
        nn/rbf.h
        nn/tf_wrapper.c
        nn/tf_wrapper.h
        nn/weights.c
        nn/weights.h
)
add_library(nn_lib ${BART_SRC_NN})


set(BART_SRC_NOIR
        noir/misc.c
        noir/misc.h
        noir/model_net.c
        noir/model_net.h
        noir/model.c
        noir/model.h
        noir/model2.c
        noir/model2.h
        noir/recon.c
        noir/recon.h
        noir/recon2.c
        noir/recon2.h
        noir/utils.c
        noir/utils.h
)
add_library(noir_lib ${BART_SRC_NOIR})


set(BART_SRC_NONCART
        noncart/gpu_grid.cu
        noncart/gpu_grid.h
        noncart/grid.c
        noncart/grid.h
        noncart/nudft.c
        noncart/nudft.h
        noncart/nufft_chain.c
        noncart/nufft_chain.h
        noncart/nufft_priv.h
        noncart/nufft.c
        noncart/nufft.h
        noncart/precond.c
        noncart/precond.h
        noncart/traj.c
        noncart/traj.h
)
add_library(noncart_lib ${BART_SRC_NONCART})


set(BART_SRC_NUM
        num/blas_md_wrapper.c
        num/blas_md_wrapper.h
        num/blas.c
        num/blas.h
        num/blockproc.c
        num/blockproc.h
        num/casorati.c
        num/casorati.h
        num/chebfun.c
        num/chebfun.h
        num/conv.c
        num/conv.h
        num/convcorr.c
        num/convcorr.h
        num/convoaa.c
        num/convoaa.h
        num/cudnn_wrapper.c
        num/cudnn_wrapper.h
        num/fft-cuda.c
        num/fft-cuda.h
        num/fft.c
        num/fft.h
        num/filter.c
        num/filter.h
        num/flpmath.c
        num/flpmath.h
        num/fltools.c
        num/fltools.h
        num/gaussians.c
        num/gaussians.h
        num/gpu_conv.cu
        num/gpu_conv.h
        num/gpu_reduce.cu
        num/gpu_reduce.h
        num/gpukrnls_bat.cu
        num/gpukrnls_bat.h
        num/gpukrnls_copy.cu
        num/gpukrnls_copy.h
        num/gpukrnls_misc.cu
        num/gpukrnls_misc.h
        num/gpukrnls_unfold.cu
        num/gpukrnls_unfold.h
        num/gpukrnls.cu
        num/gpukrnls.h
        num/gpuops.c
        num/gpuops.h
        num/gpurand.cu
        num/gpurand.h
        num/init.c
        num/init.h
        num/iovec.c
        num/iovec.h
        num/lapack.c
        num/lapack.h
        num/linalg.c
        num/linalg.h
        num/loop.c
        num/loop.h
        num/matexp.c
        num/matexp.h
        num/md_wrapper.c
        num/md_wrapper.h
        num/mdfft.c
        num/mdfft.h
        num/mem.c
        num/mem.h
        num/mpi_ops.c
        num/mpi_ops.h
        num/multind.c
        num/multind.h
        num/multiplace.c
        num/multiplace.h
        num/nlmeans.c
        num/nlmeans.h
        num/ode.c
        num/ode.h
        num/ops_graph.c
        num/ops_graph.h
        num/ops_p.c
        num/ops_p.h
        num/ops.c
        num/ops.h
        num/optimize.c
        num/optimize.h
        num/polynom.c
        num/polynom.h
        num/qform.c
        num/qform.h
        num/quadrature.c
        num/quadrature.h
        num/rand.c
        num/rand.h
        num/reduce_md_wrapper.c
        num/reduce_md_wrapper.h
        num/shuffle.c
        num/shuffle.h
        num/simplex.c
        num/simplex.h
        num/specfun.c
        num/specfun.h
        num/splines.c
        num/splines.h
        num/vec3.c
        num/vec3.h
        num/vecops_strided.c
        num/vecops_strided.h
        num/vecops.c
        num/vecops.h
        num/vptr.c
        num/vptr.h
        num/wavelet.c
        num/wavelet.h
)
add_library(num_lib ${BART_SRC_NUM})


set(BART_SRC_PYTHON
        python/pyBART_docstrings.c
        python/pyBART_pybind11_patch.h
)
add_library(python_lib ${BART_SRC_PYTHON})


set(BART_SRC_SAKE
        sake/sake.c
        sake/sake.h
)
add_library(sake_lib ${BART_SRC_SAKE})


set(BART_SRC_SENSE
        sense/model.c
        sense/model.h
        sense/optcom.c
        sense/optcom.h
        sense/pocs.c
        sense/pocs.h
        sense/recon.c
        sense/recon.h
)
add_library(sense_lib ${BART_SRC_SENSE})


set(BART_SRC_SIMU
        simu/biot_savart.c
        simu/biot_savart.h
        simu/bloch.c
        simu/bloch.h
        simu/coil.c
        simu/coil.h
        simu/crb.c
        simu/crb.h
        simu/epg.c
        simu/epg.h
        simu/phantom.c
        simu/phantom.h
        simu/pulse.c
        simu/pulse.h
        simu/sens.c
        simu/sens.h
        simu/shape.c
        simu/shape.h
        simu/shepplogan.c
        simu/shepplogan.h
        simu/signals.c
        simu/signals.h
        simu/simulation.c
        simu/simulation.h
        simu/tsegf.c
        simu/tsegf.h
)
add_library(simu_lib ${BART_SRC_SIMU})


set(BART_SRC_WAVELET
        wavelet/wavelet.c
        wavelet/wavelet.h
        wavelet/wavthresh.c
        wavelet/wavthresh.h
        wavelet/wl3-cuda.cu
        wavelet/wl3-cuda.h
)
add_library(wavelet_lib ${BART_SRC_WAVELET})


set(BART_SRC_WIN
        win/basename_patch.h
        win/fmemopen.c
        win/fmemopen.h
        win/mman.c
        win/mman.h
        win/open_patch.h
        win/rand_r.h
        win/vdprintf.h
)
if (BUILDTYPE STREQUAL "MSYS" OR BUILDTYPE STREQUAL "Cygwin")
    add_library(win_lib ${BART_SRC_WIN})
endif()


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

foreach(target IN LISTS XTARGETS)
    add_executable(${target}
            main.c
            ${target}.c
    )
    target_compile_definitions(${target} PRIVATE -Dmain_real=main_${target})
    target_link_libraries(${target} PRIVATE
            grecon_lib
            networks_lib
            noncart_lib
            nn_lib
            nlops_lib
            linops_lib
            iter_lib
            simu_lib
            geom_lib
            sense_lib
            linops_lib
            sake_lib
            calib_lib
            num_lib
            misc_lib
            num_lib
            misc_lib
            misc_lib
            calib_lib
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
            noir_lib
            grecon_lib
            wavelet_lib
            lowrank_lib
            nn_lib
            iter_lib
            nlops_lib
            linops_lib
            noncart_lib
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
            num_lib
            lapacke_lib
            python_lib
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
        lapacke_lib
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
