#!/bin/sh

mongoimport --host $mongo_host --db $mongo_db --collection $mongo_collection --type csv --columnsHaveTypes --fields "DVD_Title.string(),Studio.string(),Released.string(),Status.string(),Sound.string(),Versions.string(),Price.string(),Rating.string(),Year.string(),Genre.string(),Aspect.string(),UPC.string(),DVD_ReleaseDate.string(),ID.string(),Timestamp.string()" --upsertFields "UPC" --file /app/upc.txt
