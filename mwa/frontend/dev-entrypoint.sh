#!/bin/bash

# zur sicherheit alle npm Pakete installieren
cd /src/vue
npm i

API_BASE=${API_BASE:-https://api.dockerbuch.info}

sed -i "s|baseUrl:.*$|baseUrl: '$API_BASE',|" \
	  /src/vue/config/index.js

exec "$@"
