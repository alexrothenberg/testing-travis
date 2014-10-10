#!/bin/bash

(
 cd dist
 git init
 git config user.name "Travis-CI"
 git config user.email "travis@example.com"
 git add .
 git commit -m "Successful build #${TRAVIS_BUILD_NUMBER} https://travis-ci.org/${TRAVIS_REPO_SLUG}/builds/${TRAVIS_BUILD_ID} [Skip CI]"
 git push --force --quiet "https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}" master:artifacts > /dev/null 2>&1
)