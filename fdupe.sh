#!/bin/sh
WORKING_DIR="/volume1/archives"
DUPE_COMMAND="fdupes -rn1 "
for d in ${WORKING_DIR}/*/ 
do
	echo $d
	DIR_NAME=$(basename "${d}")
	echo $DIR_NAME
	${DUPE_COMMAND} "${d}" > "dupe_"${DIR_NAME}.txt
done
