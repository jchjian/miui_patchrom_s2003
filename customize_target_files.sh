#/bin/bash

echo ">>> add file_contexts into target_files "
cp -f other/file_contexts out/target_files/META/

echo ">>> remove some not need files of vendor "
rm -rf out/target_files/SYSTEM/etc/custom_config

echo ">>> use installd of vendor "
cp -rf stockrom/system/bin/installd out/target_files/SYSTEM/bin
