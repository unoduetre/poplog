#!/bin/bash
IM=$1
 if [ ! ${IM} ]; then IM=newpop11 ; fi
if [ ! ${POP__cc} ]; then POP__cc=cc; fi
$POP__cc -m32 -Wl,-x,-export-dynamic,--no-as-needed -o $IM \
poplink_1.o \
poplink_2.o \
poplink_3.o \
$popobjlib/xsrc.olb \
$popobjlib/vedsrc.olb \
$popobjlib/src.olb \
poplink_4.o \
poplink_dat.o \
-L$popexternlib/ \
-m32 -lpop \
-L/usr/lib32 \
-lXm \
-lXt \
-lXext \
-lX11 \
-ldl \
-lm -lc
ST=$status
if [[ $ST == 0 ]]; then rm -f $IM.stb ; fi
exit $ST
