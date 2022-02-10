#!/usr/bin/bash

SASS_DIR="sample-sass"
CSS_DIR="output-css"

F_NAMES=$(ls ${SASS_DIR} | awk -F . '{print $1}')

echo -n "compile: "
for NAME in ${F_NAMES[@]}
do
	echo -n "${CSS_DIR}/${NAME}.css "
done

echo ""
echo -e "\t@echo 'Re-compiled sass files to css successfully!'"
echo ""

for NAME in ${F_NAMES[@]}
do
	echo "${CSS_DIR}/${NAME}.css: ${SASS_DIR}/${NAME}.scss"
	echo -n -e "\t"
	echo "sass ${SASS_DIR}/${NAME}.scss ${CSS_DIR}/${NAME}.css"
	echo ""
done