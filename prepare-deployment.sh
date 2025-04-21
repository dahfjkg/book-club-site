#!/bin/bash

hugo
echo ""
echo "Archiving sites to httpdocs.zip …"
rm -rf ./httpdocs
rm -f ./httpdocs.zip
mkdir httpdocs
cp -r public/* httpdocs
zip -rq httpdocs.zip httpdocs
rm -rf ./httpdocs
echo "Done"
