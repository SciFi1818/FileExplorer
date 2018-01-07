#!/bin/bash

# Upload travis generated APKs to the Transfer.sh
cd /home/travis/build/SciFi1818/FileExplorer/app/build/outputs
ls
zip -r FileExplorer.zip apk *
cu=`curl --upload-file FileExplorer.zip https://transfer.sh/FileExplorer.zip`

echo "Transfer.sh links:"
echo "Link :              ${cu}"
exit 0
