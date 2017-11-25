#!/bin/bash


# $ rsync -arv $HOST:/anonymouskartulispeechrecognition* ~/gismet/

FILE_COUNT=`ls -1 | wc -l`
echo "Files $FILE_COUNT"

SPEAKER_COUNT=`ls -1 | wc -l`
echo "Speakers $SPEAKER_COUNT"

SAD_XAR=`ls | grep sad_xar -c`
echo "SAD_XAR $SAD_XAR"

AXLA=`ls | grep axla_ar_mcalia_da_sagamos_gadmoval -c`
echo "AXLA $AXLA"

KHELSHEKRULEBIS=`ls | grep khelshekrulebis_standartuli_pirobebi -c`
echo "KHELSHEKRULEBIS $KHELSHEKRULEBIS"

NASQIDOBIS=`ls | grep nasqidobis_khelshekruleba -c`
echo "NASQIDOBIS $NASQIDOBIS"

TEMPERATURAA=`ls | grep ra_temperaturaa_dghes -c`
echo "TEMPERATURAA $TEMPERATURAA"

AGHVADGINO=`ls | grep rogor_aghvadgino_gaukmebuli_peisbukis_gverdi -c`
echo "AGHVADGINO $AGHVADGINO"


# Files           7062
# Speakers        1014
# SAD_XAR         1033
# AXLA            907
# KHELSHEKRULEBIS 670
# NASQIDOBIS      884
# TEMPERATURAA    822
# AGHVADGINO      735
