#!/bin/bash

( cd dist
 git init
 git config user.name "Travis-CI"
 git config user.email "travis@example.com"
 git add .
 git commit -m "Successful build ${TRAVIS_BUILD_NUMBER}"
 git push --force "https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}" master:artifacts > /dev/null 2>&1
)