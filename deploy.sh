#!/usr/bin/env sh

set -e

export NODE_OPTIONS=--openssl-legacy-provider

npm run build

cd dist

git add -A
git commit -m 'It works just for github'
git push -f git@github.com:bociortdinu/dinu.is-webapp.git gh-pages

cd -
