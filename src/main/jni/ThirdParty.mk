LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

MY_ROOT := ..

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/thirdparty/jbig2dec \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg \
	$(LOCAL_PATH)/thirdparty/jpeg \
	$(LOCAL_PATH)/thirdparty/mujs \
	$(LOCAL_PATH)/thirdparty/zlib \
	$(LOCAL_PATH)/thirdparty/freetype/include \
	$(LOCAL_PATH)/scripts/freetype \
	$(LOCAL_PATH)/scripts/jpeg \
	$(LOCAL_PATH)/scripts/openjpeg \

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

LOCAL_MODULE := mupdfthirdparty
LOCAL_SRC_FILES := \
	$(LOCAL_PATH)/thirdparty/mujs/one.c \
	$(LOCAL_PATH)/thirdparty/jbig2dec/jbig2.c \
	$(LOCAL_PATH)/thirdparty/jbig2dec/jbig2_arith.c \
	$(LOCAL_PATH)/thirdparty/jbig2dec/jbig2_arith_iaid.c \
	$(LOCAL_PATH)/thirdparty/jbig2dec/jbig2_arith_int.c \
	$(LOCAL_PATH)/thirdparty/jbig2dec/jbig2_generic.c \
	$(LOCAL_PATH)/thirdparty/jbig2dec/jbig2_halftone.c \
	$(LOCAL_PATH)/thirdparty/jbig2dec/jbig2_huffman.c \
	$(LOCAL_PATH)/thirdparty/jbig2dec/jbig2_image.c \
	$(LOCAL_PATH)/thirdparty/jbig2dec/jbig2_metadata.c \
	$(LOCAL_PATH)/thirdparty/jbig2dec/jbig2_mmr.c \
	$(LOCAL_PATH)/thirdparty/jbig2dec/jbig2_page.c \
	$(LOCAL_PATH)/thirdparty/jbig2dec/jbig2_refinement.c \
	$(LOCAL_PATH)/thirdparty/jbig2dec/jbig2_segment.c \
	$(LOCAL_PATH)/thirdparty/jbig2dec/jbig2_symbol_dict.c \
	$(LOCAL_PATH)/thirdparty/jbig2dec/jbig2_text.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/bio.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/cidx_manager.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/cio.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/dwt.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/event.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/function_list.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/image.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/invert.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/j2k.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/jp2.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/mct.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/mqc.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/openjpeg.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/opj_clock.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/phix_manager.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/pi.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/ppix_manager.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/raw.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/t1.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/t1_generate_luts.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/t2.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/tcd.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/tgt.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/thix_manager.c \
	$(LOCAL_PATH)/thirdparty/openjpeg/libopenjpeg/tpix_manager.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jaricom.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jcomapi.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jdapimin.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jdapistd.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jdarith.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jdatadst.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jdatasrc.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jdcoefct.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jdcolor.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jddctmgr.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jdhuff.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jdinput.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jdmainct.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jdmarker.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jdmaster.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jdmerge.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jdpostct.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jdsample.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jdtrans.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jerror.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jfdctflt.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jfdctfst.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jfdctint.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jidctflt.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jidctfst.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jidctint.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jmemmgr.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jquant1.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jquant2.c \
	$(LOCAL_PATH)/thirdparty/jpeg/jutils.c \
	$(LOCAL_PATH)/thirdparty/zlib/adler32.c \
	$(LOCAL_PATH)/thirdparty/zlib/compress.c \
	$(LOCAL_PATH)/thirdparty/zlib/crc32.c \
	$(LOCAL_PATH)/thirdparty/zlib/deflate.c \
	$(LOCAL_PATH)/thirdparty/zlib/inffast.c \
	$(LOCAL_PATH)/thirdparty/zlib/inflate.c \
	$(LOCAL_PATH)/thirdparty/zlib/inftrees.c \
	$(LOCAL_PATH)/thirdparty/zlib/trees.c \
	$(LOCAL_PATH)/thirdparty/zlib/uncompr.c \
	$(LOCAL_PATH)/thirdparty/zlib/zutil.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/base/ftbase.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/base/ftbbox.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/base/ftbitmap.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/base/ftgasp.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/base/ftglyph.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/base/ftinit.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/base/ftstroke.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/base/ftsynth.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/base/ftsystem.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/base/fttype1.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/base/ftxf86.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/cff/cff.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/cid/type1cid.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/psaux/psaux.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/pshinter/pshinter.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/psnames/psnames.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/raster/raster.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/smooth/smooth.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/sfnt/sfnt.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/truetype/truetype.c \
	$(LOCAL_PATH)/thirdparty/freetype/src/type1/type1.c

LOCAL_SRC_FILES := $(addprefix ../, $(LOCAL_SRC_FILES))
include $(BUILD_STATIC_LIBRARY)
