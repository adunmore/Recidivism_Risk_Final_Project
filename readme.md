## Introduction
This repository contains a group project produced by [Aaron Dunmore](mailto:adunmore@andrew.cmu.edu) and [Minseon Lee](mailto:minseonl@andrew.cmu.edu) for 95791 Data Mining at CMU Heinz College.  

We process a large (100k records) data set of arrest records, and train models predicting risk of two-year recidivism and two-year violent recidivism at time of arrest. We then evaluate our models, comparing their performance to that of a professional model, and assessing whether they perform differently among different demographic categories. 

## Using the project

### data_orocessing.sh

This repository contains the source code and data required to build the project from scratch.

Before executing Notebooks/final_report.Rmd, simply run Data_Processing/data_processing.sh. This shell script:
   - creates temp folders Data/modified/ and Cache/
   - creates a copy of the source data (Data/compas.db) in Data/modified/compas.db
   - in the copy of the source data, executes data_processing.sql, which creates a number of additional variables, and makes several changes optimizing performance (adding indexes, denormalizing tables).
   - executes data_export.R, which generates several temporary .csv files in Data/modified, which are used by the modeling code.

Note that final_report.Rmd and data_export.R each require several R packages as prerequisites. These must be installed manually.

### Cache/
We cache models that are performance-intensive to train in Cache/. If you would like to train all models as new, be sure to delete the contents of Cache/. If you would like to train all models as new, be sure to delete the contents of Cache/.
