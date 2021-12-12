#!/bin/bash

mkdir  ~/gismet
# rsync -aLrv $HOST:/$DATA_PATH/anonymouskartulispeechrecognition* ~/gismet

cd ~/gismet
ls  -l ~/gismet

SPEAKER_COUNT=`ls -1 | wc -l`
echo "Flatten into dir into filenames"
cd ~/
rm -rf test_flatten
rm -rf test_flatten_results
mkdir test_flatten
mkdir test_flatten_results
cp -r gismet/anonymouskartulispeechrecognition* test_flatten

find test_flatten -type f -exec sh -c 'new=$(echo "{}" | sed "s/test_flatten\///g"| tr "/" "-" | tr " " "_"); mv "{}" "test_flatten_results/$new"' \;
# mv anonymouskartulispeechrecognition*  test_flatten_results
tree test_flatten
tree test_flatten_results

echo "Move into dir by utterance"
cd test_flatten_results
mkdir axla_ar_mcalia_da_sagamos_gadmoval
find *axla_ar_mcalia_da_sagamos_gadmoval_* -type f -exec mv -i '{}' axla_ar_mcalia_da_sagamos_gadmoval/ ';'

mkdir khelshekrulebis_standartuli_pirobebi
find *khelshekrulebis_standartuli_pirobebi_* -type f -exec mv -i '{}' khelshekrulebis_standartuli_pirobebi/ ';'

mkdir nasqidobis_khelshekruleba
find *nasqidobis_khelshekruleba_* -type f -exec mv -i '{}' nasqidobis_khelshekruleba/ ';'

mkdir ra_temperaturaa_dghes
find *ra_temperaturaa_dghes_* -type f -exec mv -i '{}' ra_temperaturaa_dghes/ ';'

mkdir rogor_aghvadgino_gaukmebuli_peisbukis_gverdi
find *rogor_aghvadgino_gaukmebuli_peisbukis_gverdi_* -type f -exec mv -i '{}' rogor_aghvadgino_gaukmebuli_peisbukis_gverdi/ ';'

mkdir sad_xar
find *sad_xar_* -type f -exec mv -i '{}' sad_xar/ ';'

tree test_flatten_results

echo "Files $FILE_COUNT"
echo "Speakers $SPEAKER_COUNT"

SAD_XAR=`ls -l sad_xar | grep sad_xar -c`
echo "SAD_XAR $SAD_XAR"

AXLA=`ls -l axla_ar_mcalia_da_sagamos_gadmoval | grep axla_ar_mcalia_da_sagamos_gadmoval -c`
echo "AXLA $AXLA"

KHELSHEKRULEBIS=`ls -l khelshekrulebis_standartuli_pirobebi | grep khelshekrulebis_standartuli_pirobebi -c`
echo "KHELSHEKRULEBIS $KHELSHEKRULEBIS"

NASQIDOBIS=`ls -l nasqidobis_khelshekruleba | grep nasqidobis_khelshekruleba -c`
echo "NASQIDOBIS $NASQIDOBIS"

TEMPERATURAA=`ls -l ra_temperaturaa_dghes | grep ra_temperaturaa_dghes -c`
echo "TEMPERATURAA $TEMPERATURAA"

AGHVADGINO=`ls -l rogor_aghvadgino_gaukmebuli_peisbukis_gverdi | grep rogor_aghvadgino_gaukmebuli_peisbukis_gverdi -c`
echo "AGHVADGINO $AGHVADGINO"

mv test_flatten_results ~/gismet_by_utterance

# Files           7062
# Speakers        1014
# SAD_XAR         1033
# AXLA            907
# KHELSHEKRULEBIS 670
# NASQIDOBIS      884
# TEMPERATURAA    822
# AGHVADGINO      735
