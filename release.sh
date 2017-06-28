#!/usr/bin/env bash
set -e
#sometimes git returns strange things...this seems to clear the bad state.
git status &> /dev/null

NEWTAG=`npm version minor`
echo $NEWTAG
# git tag --delete $NEWTAG

NEXT=`npm  --no-git-tag-version version minor`
NEXT="$NEXT-alpha";
NEXT=${NEXT:1}

npm --no-git-tag-version version $NEXT
git commit -am "$NEXT" &>/dev/null
git push > /dev/null
git push origin tag $NEWTAG >/dev/null
