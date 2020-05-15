#!/bin/bash
git pull
npm install
cd client && npm install && yarn run build && sudo fuser -k 5000/tcp && sudo fuser -k 3000/tcp && sudo fuser -k 8080/tcp && cd ..
yarn run prod