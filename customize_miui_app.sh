#/bin/bash

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

curdir=`pwd`

function applyPatch() {
     for file in $1/*.patch
     do
         cp $file out/
         cd out
         git.apply `basename $file`
     for file2 in `find $2 -name *.rej`
     do
         echo "$file2 fail"
         exit 1
     done
         cd ..
     done
}


function appendSmaliPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

function mergyXmlPart() {
	for file in `find $1/res -name *.xml.part`
	do
		src=`dirname $file`
		dst=${src/$1/$2}
		$XMLMERGYTOOL $src $dst
	done
}

if [ $1 = "Phone" ];then
        echo ">>> in custom_app for Phone.apk to adjust the interface "registerForNetworkLocked" with "registerForPersoLocked""
        find out/Phone -name "*.smali" | xargs sed -i 's#registerForNetworkLocked#registerForPersoLocked#g'

fi

if [ $1 = "MiuiSystemUI" ];then
        echo ">>> in custom_app for MiuiSystemUI.apk to adjust the field IccCardConstants$State;->NETWORK_LOCKED with IccCardConstants$State;->PERSO_LOCKED"
        find out/MiuiSystemUI -name "*.smali" | xargs sed -i 's#IccCardConstants$State;->NETWORK_LOCKED#IccCardConstants$State;->PERSO_LOCKED#g'

fi

