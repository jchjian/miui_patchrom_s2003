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

        echo ">>> delete preferred_network_mode_title"
        sed -i '/preferred_network_mode_title/d' out/Phone/res/xml/network_setting_miui.xml

        echo ">>> use 4g network type"
        sed -i '/IS_MIFOUR_LTE:Z/{n;n;s/if-eqz/\#if-eqz/g}' out/Phone/smali/com/android/phone/MiuiPreferredNetworkTypeListPreference.smali
        sed -i '/IS_MIFOUR_LTE:Z/{n;n;s/if-eqz/\#if-eqz/g}' out/Phone/smali/com/android/phone/MiuiTelephonyCapabilities.smali
        sed -i '/IS_MIFOUR_LTE:Z/{n;n;s/if-eqz/\#if-eqz/g}' out/Phone/smali/com/android/phone/MiuiPhoneGlobals.smali

fi

if [ $1 = "MiuiSystemUI" ];then
        echo ">>> in custom_app for MiuiSystemUI.apk to adjust the field IccCardConstants$State;->NETWORK_LOCKED with IccCardConstants$State;->PERSO_LOCKED"
        find out/MiuiSystemUI -name "*.smali" | xargs sed -i 's#IccCardConstants$State;->NETWORK_LOCKED#IccCardConstants$State;->PERSO_LOCKED#g'

        applyPatch "other/MiuiSystemUI"
        cp -rf overlay/MiuiSystemUI/smali/* out/MiuiSystemUI/smali

fi

if [ $1 = "Settings" ];then
        echo ">>> fix id error "
        find out/Settings -name "*.smali" | xargs sed -i 's#1040405#104040b#g'
        find out/Settings -name "*.smali" | xargs sed -i 's#108039c#1080398#g'
        find out/Settings -name "*.smali" | xargs sed -i 's#10900a1#10900a0#g'
        find out/Settings -name "*.smali" | xargs sed -i 's#1080394#1080390#g'
        find out/Settings -name "*.smali" | xargs sed -i 's#1080395#1080391#g'
        sed -i 's/10202ce/10202c5/g' out/Settings/smali/com/android/settings/inputmethod/KeyboardLayoutDialogFragment\$KeyboardLayoutAdapter.smali
        sed -i 's/1040545/104054c/g' out/Settings/smali/com/android/settings/wfd/WifiDisplaySettings\$UnpairedWifiDisplayPreference.smali
        sed -i 's/10400c9/10400cc/g' out/Settings/smali/com/android/settings/BugreportPreference.smali
        sed -i 's/109009e/109009d/g' out/Settings/smali/com/android/settings/vpn2/VpnSettings\$LockdownConfigFragment\$TitleAdapter.smali
        sed -i 's/1110039/111003a/g' out/Settings/smali/com/android/settings/bluetooth/BluetoothSettings.smali
        sed -i 's/1110057/111005a/g' out/Settings/smali/com/android/settings/SoundSettings.smali
        sed -i 's/111004c/111004d/g' out/Settings/smali/com/android/settings/DreamBackend.smali
        sed -i 's/111004b/111004c/g' out/Settings/smali/com/android/settings/DreamBackend.smali
        sed -i 's/111004a/111004b/g' out/Settings/smali/com/android/settings/DreamBackend.smali
        sed -i 's/111004d/111004e/g' out/Settings/smali/com/android/settings/WirelessSettings.smali

        $XMLMERGYTOOL $1/res/values $2/res/values
        $XMLMERGYTOOL $1/res/values-zh-rCN $2/res/values-zh-rCN
        $XMLMERGYTOOL $1/res/values-zh-rTW $2/res/values-zh-rTW

        echo ">>> The following command adds the advanced settings to the settings_headers.xml file "
        sed -i '/QUIET_MODE/{N;/header/r other/Settings/add_advanced_settings.xml
}' out/Settings/res/xml/settings_headers.xml
        cp -rf overlay/Settings/* out/Settings

        applyPatch "other/Settings"
fi

if [ $1 = "MiuiGallery" ];then
        applyPatch "other/MiuiGallery"
fi

if [ $1 = "Music" ];then
        applyPatch "other/Music"
fi

if [ $1 = "MiuiHome" ];then
        $XMLMERGYTOOL $1/res/values $2/res/values
fi
