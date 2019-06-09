#!/bin/bash

#
# This script will scan all the files and write out patches to enable the B9PartSwitch
# in all parts that use any of the common files
#
cfgs=`find ../. -name \*cfg -print`
files=`ls -1 ../StockScheme | cut -f1 -d'.'`
files=`echo $files`

function Scanfiles
{

	for i in $cfgs; do
		name=`grep 'name =' $i | head -1 | cut -f2 -d'=' | sed 's/ //'`
		texs=`grep 'texture =' $i | cut -f1 -d',' | cut -f2 -d'=' | sed 's/ //' `
		texs=`echo $texs`

		if [ "$texs" != "" -a "$name" != "ModuleB9PartSwitch" ]; then
			retro=false
			subtype=false
			subtypeclose=false
			part=false
			for t in $texs; do
				if [[ ${files} =~ .*${t}.* ]]; then
					if [ $part = false ]; then
						part=true
						echo "@PART[${name}]"
						echo "{"
						echo "	MODULE"
						echo "	{"
						echo "		name = ModuleB9PartSwitch"
						echo "		moduleID = textureSwitch"
					fi
		
					if [ "$1" = "retro" -a $retro = false ]; then
						retro=true
						echo "		SUBTYPE"
						echo "		{"
						echo "			name = Retro"
						echo "		}"
					fi


					if [ $subtype = false ]; then
						subtype=true
						echo "		SUBTYPE"
						echo "		{"
						echo "			name = Stock"
					fi
					echo "			TEXTURE"
					echo "			{"
					echo "				texture = RetroFuture/StockScheme/$t"
					echo "				currentTexture = $t"
					echo "			}"
				fi
			done
			if [ $subtype = true -a $subtypeclose = false ]; then
				echo "		}"
				subtypeclose=true
			fi
			if [ "$1" = "stock" -a $subtypeclose=true ]; then
				echo "		SUBTYPE"
				echo "		{"
				echo "			name = Retro"
				echo "		}"
			fi
			if [ $part = true ]; then
				echo "	}";
				echo "}";
			fi
		fi
	
	done
}

Scanfiles retro > ActiveMMPatches/RetroFirst.cfg
Scanfiles stock > PluginData/StockFirst.cfg
