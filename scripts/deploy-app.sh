#!/bin/bash -e

# Checkout gh-pages branch
git checkout -fq gh-pages

# Add dist folder
git add -f packages/app/dist

# Check if tree is dirty
if ! [[ -z `git status -s` ]]; then
  # Commit changes
  git commit -m "chore(site): Deploy to gh-pages"

  # Push to remote
  git push origin `git subtree split --prefix packages/app/dist`:gh-pages --force
fi

# checkout previous branch
git checkout -q -

