#!/usr/bin/env sh

set -e

export NODE_OPTIONS=--openssl-legacy-provider

npm run build

cd dist

git init
git add -A
git commit -m 'New Deployment'
git push -f git@github.com:bociortdinu/dinu.is-webapp.git master:gh-pages

cd -
