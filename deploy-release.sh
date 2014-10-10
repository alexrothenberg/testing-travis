#!/bin/bash

(
  git clone "https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}" artifacts
  cd artifacts
  git checkout artifacts
  rm -rf *
  cp -r ../dist/* .
  rm Gemfile Gemfile.lock Procfile sinatra.rb
  git config user.name "Travis-CI"
  git config user.email "travis@example.com"
  git add .
  git commit -m "Successful build ${TRAVIS_BUILD_NUMBER} https://travis-ci.org/${TRAVIS_REPO_SLUG}/builds/${TRAVIS_BUILD_ID} [Skip CI]"
  git push --quiet origin artifacts > /dev/null 2>&1
)