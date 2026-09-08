# list remote data files
aws s3 ls s3://dsan6000-wikipedia/hourly/

# copy remote data into local data folder
aws s3 cp s3://dsan6000-wikipedia/hourly/ data/ --recursive --exclude "*" --include "*.csv"

# list local data files
ls data/*.csv
