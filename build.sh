#!/bin/bash
documents=('../Entorno/guion.md entorno.html' \
	'../Modulos/guion.md practica1.html' \
	'../Chardev/guion.md practica2.html' \
	'../Syncronization/guion.md practica3.html' \
	'../TopBottom/guion.md practica4.html' \
	'../PlatformDriver/guion.md practica5.html' \
	'../IntroBPFTrace/intro_bpftrace.md intro_bpftrace.html')

ndocs=${#documents[@]}

for (( i=0 ; $i<$ndocs ; i++ ))
do
	items=(${documents[$i]})
	source_file=${items[0]}
	target_file=${items[1]}
	echo "${source_file} --> ${target_file}"
	pandoc ${source_file} -N --self-contained  --template pandoc-templates/toc-sidebarL-title.html-template.html --toc  -o ${target_file}
done

