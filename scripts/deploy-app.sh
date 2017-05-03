#!/bin/bash -e

echo Checkout gh-pages branch
git checkout -f gh-pages

echo Add dist folder
git add -f packages/app/dist

echo Check if tree is dirty
if ! [[ -z `git diff-index --quiet HEAD` ]]; then
  echo Commit changes
  git commit -m "chore(site): Deploy to gh-pages"

  echo Push to remote
  git push origin `git subtree split --prefix packages/app/dist`:gh-pages --force
fi

echo checkout previous branch
git checkout -

