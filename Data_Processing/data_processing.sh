mkdir -p ../Cache
cp ../Data/compas.db ../Data/modified/compas.db
sqlite3 ../Data/modified/compas.db < data_processing.sql
R < dat_export.R
