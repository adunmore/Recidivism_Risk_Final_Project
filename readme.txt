This directory comes ready to run. Data/ includes a processed version of compas.db, and 
several processed .csv files that will be used by our models. Cache/ stores our trained
models as saved R objects.

You can execute Notebooks/[notebook name] without having to run any other code.

You can also rebuild our project from scratch:

1. Delete the contents of Data/. Place compas.db (from 
   https://github.com/propublica/compas-analysis/blob/master/compas.db) in Data/.

2. Open compas.db in a sqlite manager, and execute Data_Processing/data_processing.sql
   (we used DB Browser for SQLite from https://sqlitebrowser.org/).

   This creates a number of variables used by our models in the database.

3. Execute Data_Processing/data_export.R (making sure your working directory is set to the 
   top level of this folder)

   This forms several .csv files used by our analysis.

4. Execute Notebooks/[notebook name].Rmd, making sure your working directory is set to Notebooks/.
   
   If you would like to train all models as new, be sure to delete the contents of Cache/.
   Cache stores our trained models, saving time when re-executing our notebook.
