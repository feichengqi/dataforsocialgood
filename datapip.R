library(RSQLite)
# Set up
drv = dbDriver('SQLite')
dir = './'
dbFilename = 'FPA_FOD_20170508.sqlite'
db = dbConnect(drv, dbname = file.path(dir, dbFilename))

# Read Table to dataframes
spatial_ref_sys = dbGetQuery(db, "SELECT * FROM spatial_ref_sys")
spatial_ref_sys_aux = dbGetQuery(db, "SELECT * FROM spatial_ref_sys_aux")

