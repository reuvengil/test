#!/bin/bash
echo 'export default {ip: "http://localhost"}' > ./config.js

git config --local filter.cleanLocalhost.clean "sed -e s+http://localhost+https://10.0.0.1+g"
git config --local filter.cleanLocalhost.smudge "sed -e s+https://10.0.0.1+http://localhost+g"

echo "config.js filter=cleanLocalhost" > .gitattributes
