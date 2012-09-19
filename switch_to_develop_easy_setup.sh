#!/bin/bash

echo ""
echo ""
echo "Put the Node server to act as the development server"
sed 's/nodeconfig_[^)]*)/nodeconfig_devserver")/' service.js  > output
mv output service.js

sed 's/nodeconfig_[^)]*)/nodeconfig_devserver")/' lib/userauthentication.js  > output
mv output lib/userauthentication.js
sed 's/couchkeys_[^)]*)/couchkeys_devserver")/' lib/userauthentication.js  > output
mv output lib/userauthentication.js

sed 's/nodeconfig_[^)]*)/nodeconfig_devserver")/' lib/corpusmanagement.js  > output
mv output lib/corpusmanagement.js
sed 's/couchkeys_[^)]*)/couchkeys_devserver")/' lib/corpusmanagement.js  > output
mv output lib/corpusmanagement.js

echo ""
echo ""
echo "Now running in developer mode."
