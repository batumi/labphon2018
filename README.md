# Variation in Georgian using large scale data collection


## Background

Georgian is an understudied agglutinative language spoken in the Caucas Mountans in Eastern Europe. Geogian is a low resource language which has very little access to software and tools (such as spell checkers, dictionaries and search engine tokenizers) which would facilitate using Georgian in its written form. Georgian is spoken by 1.4 million speakers in the Republic of Georgia and members of the Georgian diaspora throughout the world. While Georgian is the national language of Georgia, most computer systems sold in Georgia are offered in Russian or in English, and because most search engines lack support for Geogian, users perform internet searches using Russian or English keywords (Sherouse, 2014).


## Methodology

In 2014 we created open source libraries and tools to facilitate usage of the Georgian language by Georgian speakers (Dunham et al 2014). One of these tools was Gismet, an Android application which can be used by Georgian speakers to train their Android smartphones to recognize their speech using PocketSphinx (Huggins-Daines 2006). The software was made free, public and also open source on GitHub, a social coding site where developers can share and contribute to source code.

Participants discover the application from the Google Play App Store. After installing the application they are led through a tutorial where they record 2-6 utterances to train the application to their voice. The stimuli consisted of 2 SMS dictations, 2 web searches and 2 legal searches. After training users can add additional training sentences or begin using the application anywhere in the Android system where keyboard input is provided. The training utterances are uploaded to a central server where they are processed using Praat and the CMUSphinx language model toolkit (Walker et al 2004) to customize the acoustic model for the speaker. The stimuli are comprised of 7 utterances which were chosen among frequent SMS dictations in a corpora offered by 3 speakers in Batumi, Georgia.


## Data

Since 2014 1,000 users have used the application to train the default language model to their voices. The resulting dataset contains only elicited training recordings, no user defined messages are included in the dataset. In this paper we discuss preliminary findings in the data collected and variation in the data along two directions, corelation of prosodic variation and GPS location of the recording, and prosodic variation across participants.


## Figures

Map of Georgia ([source](https://www.arcgis.com/home/webmap/viewer.html?webmap=538fc5649e2c463eb32fa1ce3fdfb51f))

<img width="1307" alt="georgia" src="https://user-images.githubusercontent.com/196199/33235464-c36ab37a-d206-11e7-960d-02d28047e70b.png">


Specrogram of "რა ტემპერატურაა დღეს?" with exagerated intonation

<img width="1307" alt="georgia" src="figures/anonymouskartulispeechrecognition1404679546310-kartuli_ra_temperaturaa_dghes_2014-07-07_00_46_1404679582765_ra_temperaturaa_dghes_2014-07-07_00_46_1404679582765_ra_temperaturaa_dghes_2.png">


Specrogram of "რა ტემპერატურაა დღეს?" with natural intonation

<img width="1307" alt="georgia" src="figures/anonymouskartulispeechrecognition1406620000430-kartuli_ra_temperaturaa_dghes_2014-07-29_11_47_1406620054582_ra_temperaturaa_dghes_2014-07-29_11_47_1406620054582_ra_temperaturaa_dghes_2.png">



## References

```
@InProceedings{dunham-chiodo-horner:2014:W14-22,
  author    = {Dunham, Joel  and  Chiodo, Gina  and  Horner, Joshua},
  title     = {LingSync \& the Online Linguistic Database: New Models for the Collection and Management of Data for Language Communities, Linguists and Language Learners},
  booktitle = {Proceedings of the 2014 Workshop on the Use of Computational Methods in the Study of Endangered Languages},
  month     = {June},
  year      = {2014},
  address   = {Baltimore, Maryland, USA},
  publisher = {Association for Computational Linguistics},
  pages     = {24--33},
  url       = {http://www.aclweb.org/anthology/W14-2204}
}


@article{SHEROUSE20141,
  title = "Hazardous digits: Telephone keypads and Russian numbers in Tbilisi, Georgia",
  journal = "Language & Communication",
  volume = "37",
  number = "Supplement C",
  pages = "1 - 11",
  year = "2014",
  issn = "0271-5309",
  doi = "https://doi.org/10.1016/j.langcom.2014.03.001",
  url = "http://www.sciencedirect.com/science/article/pii/S0271530914000172",
  author = "Perry Sherouse",
  keywords = "Sociotechnical system, Telephone, Language ideology, Numeral system, Numbers"
}

@incollection{juhar2012recent,
  title={Recent progress in development of language model for Slovak large vocabulary continuous speech recognition},
  author={Juh{\'a}r, Jozef and Sta{\v{s}}, J{\'a}n and Hl{\'a}dek, Daniel},
  booktitle={New technologies-trends, innovations and research},
  year={2012},
  publisher={InTech}
}

@article{walker2004sphinx,
  title={Sphinx-4: A flexible open source framework for speech recognition},
  author={Walker, Willie and Lamere, Paul and Kwok, Philip and Raj, Bhiksha and Singh, Rita and Gouvea, Evandro and Wolf, Peter and Woelfel, Joe},
  year={2004},
  publisher={Sun Microsystems, Inc.}
}

@INPROCEEDINGS{Huggins-daines06pocketsphinx:a,
    author = {David Huggins-Daines and Mohit Kumar and Arthur Chan and Alan W Black and Mosur Ravishankar and Alex I. Rudnicky},
    title = {PocketSphinx: A free, real-time continuous speech recognition system for hand-held devices},
    booktitle = {in Proceedings of ICASSP},
    year = {2006}
}

```

TODO

* Ioana Chitoran georgian clusters



## Links

### Georgia maps

* https://www.arcgis.com/home/item.html?id=ec63e68fcf304c639859ebbc29d0a0f0
* https://www.arcgis.com/home/item.html?id=538fc5649e2c463eb32fa1ce3fdfb51f
* https://www.arcgis.com/home/item.html?id=7e9476ac913b481baf4d44fc5468cf97
* https://www.arcgis.com/home/webmap/viewer.html?webmap=1adf3a2d0a434e60b4c64ff4fe74e48b
* https://www.arcgis.com/home/item.html?id=ad7c8f1a0a3e465884d58f1a5309d191


### World map

* https://services.arcgisonline.com/arcgis/rest/services/Canvas/World_Dark_Gray_Reference/MapServer



### D3 maps

* https://github.com/d3/d3-geo/blob/master/README.md#projections
* http://maptimeboston.github.io/d3-maptime/#/86



Georgian SMS

http://www.sciencedirect.com/science/article/pii/S0271530914000172

