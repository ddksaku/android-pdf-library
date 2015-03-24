LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
	thirdparty/jbig2dec \
	thirdparty/openjpeg/libopenjpeg \
	thirdparty/jpeg \
	thirdparty/mujs \
	thirdparty/zlib \
	thirdparty/freetype/include \
	scripts/freetype \
	scripts/jpeg \
	scripts/openjpeg \

LOCAL_CFLAGS := \
	-DFT2_BUILD_LIBRARY -DDARWIN_NO_CARBON -DHAVE_STDINT_H \
	-DOPJ_HAVE_STDINT_H \
	'-DFT_CONFIG_MODULES_H="slimftmodules.h"' \
	'-DFT_CONFIG_OPTIONS_H="slimftoptions.h"'
ifdef NDK_PROFILER
LOCAL_CFLAGS += -pg -DNDK_PROFILER -O2
endif
ifdef MEMENTO
LOCAL_CFLAGS += -DMEMENTO -DMEMENTO_LEAKONLY
endif

LOCAL_MODULE:= mupdfthirdparty
LOCAL_SRC_FILES := \
	thirdparty/mujs/one.c \
    thirdparty/jbig2dec/jbig2.c \
	thirdparty/jbig2dec/jbig2_arith.c \
	thirdparty/jbig2dec/jbig2_arith_iaid.c \
	thirdparty/jbig2dec/jbig2_arith_int.c \
	thirdparty/jbig2dec/jbig2_generic.c \
	thirdparty/jbig2dec/jbig2_halftone.c \
	thirdparty/jbig2dec/jbig2_huffman.c \
	thirdparty/jbig2dec/jbig2_image.c \
	thirdparty/jbig2dec/jbig2_metadata.c \
	thirdparty/jbig2dec/jbig2_mmr.c \
	thirdparty/jbig2dec/jbig2_page.c \
	thirdparty/jbig2dec/jbig2_refinement.c \
	thirdparty/jbig2dec/jbig2_segment.c \
	thirdparty/jbig2dec/jbig2_symbol_dict.c \
	thirdparty/jbig2dec/jbig2_text.c \
	thirdparty/openjpeg/libopenjpeg/bio.c \
	thirdparty/openjpeg/libopenjpeg/cidx_manager.c \
	thirdparty/openjpeg/libopenjpeg/cio.c \
	thirdparty/openjpeg/libopenjpeg/dwt.c \
	thirdparty/openjpeg/libopenjpeg/event.c \
	thirdparty/openjpeg/libopenjpeg/function_list.c \
	thirdparty/openjpeg/libopenjpeg/image.c \
	thirdparty/openjpeg/libopenjpeg/invert.c \
	thirdparty/openjpeg/libopenjpeg/j2k.c \
	thirdparty/openjpeg/libopenjpeg/jp2.c \
	thirdparty/openjpeg/libopenjpeg/mct.c \
	thirdparty/openjpeg/libopenjpeg/mqc.c \
	thirdparty/openjpeg/libopenjpeg/openjpeg.c \
	thirdparty/openjpeg/libopenjpeg/opj_clock.c \
	thirdparty/openjpeg/libopenjpeg/phix_manager.c \
	thirdparty/openjpeg/libopenjpeg/pi.c \
	thirdparty/openjpeg/libopenjpeg/ppix_manager.c \
	thirdparty/openjpeg/libopenjpeg/raw.c \
	thirdparty/openjpeg/libopenjpeg/t1.c \
	thirdparty/openjpeg/libopenjpeg/t1_generate_luts.c \
	thirdparty/openjpeg/libopenjpeg/t2.c \
	thirdparty/openjpeg/libopenjpeg/tcd.c \
	thirdparty/openjpeg/libopenjpeg/tgt.c \
	thirdparty/openjpeg/libopenjpeg/thix_manager.c \
	thirdparty/openjpeg/libopenjpeg/tpix_manager.c \
	thirdparty/jpeg/jaricom.c \
	thirdparty/jpeg/jcomapi.c \
	thirdparty/jpeg/jdapimin.c \
	thirdparty/jpeg/jdapistd.c \
	thirdparty/jpeg/jdarith.c \
	thirdparty/jpeg/jdatadst.c \
	thirdparty/jpeg/jdatasrc.c \
	thirdparty/jpeg/jdcoefct.c \
	thirdparty/jpeg/jdcolor.c \
	thirdparty/jpeg/jddctmgr.c \
	thirdparty/jpeg/jdhuff.c \
	thirdparty/jpeg/jdinput.c \
	thirdparty/jpeg/jdmainct.c \
	thirdparty/jpeg/jdmarker.c \
	thirdparty/jpeg/jdmaster.c \
	thirdparty/jpeg/jdmerge.c \
	thirdparty/jpeg/jdpostct.c \
	thirdparty/jpeg/jdsample.c \
	thirdparty/jpeg/jdtrans.c \
	thirdparty/jpeg/jerror.c \
	thirdparty/jpeg/jfdctflt.c \
	thirdparty/jpeg/jfdctfst.c \
	thirdparty/jpeg/jfdctint.c \
	thirdparty/jpeg/jidctflt.c \
	thirdparty/jpeg/jidctfst.c \
	thirdparty/jpeg/jidctint.c \
	thirdparty/jpeg/jmemmgr.c \
	thirdparty/jpeg/jquant1.c \
	thirdparty/jpeg/jquant2.c \
	thirdparty/jpeg/jutils.c \
	thirdparty/zlib/adler32.c \
	thirdparty/zlib/compress.c \
	thirdparty/zlib/crc32.c \
	thirdparty/zlib/deflate.c \
	thirdparty/zlib/inffast.c \
	thirdparty/zlib/inflate.c \
	thirdparty/zlib/inftrees.c \
	thirdparty/zlib/trees.c \
	thirdparty/zlib/uncompr.c \
	thirdparty/zlib/zutil.c \
	thirdparty/freetype/src/base/ftbase.c \
	thirdparty/freetype/src/base/ftbbox.c \
	thirdparty/freetype/src/base/ftbitmap.c \
	thirdparty/freetype/src/base/ftgasp.c \
	thirdparty/freetype/src/base/ftglyph.c \
	thirdparty/freetype/src/base/ftinit.c \
	thirdparty/freetype/src/base/ftstroke.c \
	thirdparty/freetype/src/base/ftsynth.c \
	thirdparty/freetype/src/base/ftsystem.c \
	thirdparty/freetype/src/base/fttype1.c \
	thirdparty/freetype/src/base/ftxf86.c \
	thirdparty/freetype/src/cff/cff.c \
	thirdparty/freetype/src/cid/type1cid.c \
	thirdparty/freetype/src/psaux/psaux.c \
	thirdparty/freetype/src/pshinter/pshinter.c \
	thirdparty/freetype/src/psnames/psnames.c \
	thirdparty/freetype/src/raster/raster.c \
	thirdparty/freetype/src/smooth/smooth.c \
	thirdparty/freetype/src/sfnt/sfnt.c \
	thirdparty/freetype/src/truetype/truetype.c \
	thirdparty/freetype/src/type1/type1.c


include $(BUILD_STATIC_LIBRARY)
