#Android MUPDF LIBRARY PROJECT(GRADLE)#

This is project from ghostscript.com(http://www.ghostscript.com/).

All ndk build mechanism is done by gradle.

Sdk is updated to android v-21, android ndk is updated v-10


*USASGE*
* 1.Add all related holders  to src/main/jni from ghostscript*
    * andprof
    * docs
    * generated
    * include
    * resources
    * scripts
    * source
    * thirdparty
* 2.Add android mk files to src/main/jni*
    * android.mk
    * Application.mk
    * Core.mk
    * ThirdParty.mk
* 3.Add C file*
    * mupdf.c


Compile can be done  via 2 ways

    * gradle build
    * nkd-build command


Compiled .so files are place in src/main/obj/local