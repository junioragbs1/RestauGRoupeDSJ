#!/bin/bash
TARGET_BRANCH="main"
BRANCHES=("card" "form" "responsivehf")

git checkout $TARGET_BRANCH
git pull origin $TARGET_BRANCH

for BRANCH in "${BRANCHES[@]}"
do
  echo "Merging $BRANCH into $TARGET_BRANCH..."
  git merge --no-ff $BRANCH -m "Merge branch '$BRANCH'"
done

echo "All merges complete."
