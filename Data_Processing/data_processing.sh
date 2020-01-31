mkdir -p ../Cache
mkdir -p ../Data/modified 
cp ../Data/compas.db ../Data/modified/compas.db
sqlite3 ../Data/modified/compas.db < feature_engineering.sql
R < data_export.R --no-save
