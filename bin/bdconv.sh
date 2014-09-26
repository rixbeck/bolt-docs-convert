#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BASE=$DIR/../vendor/bolt/bolt-docs
SRC=$BASE/source

FIND="<img src="
REPL="<img src=\"$BASE"
REPL="${REPL//\//\\/}"

FILES=(\
     $SRC/about.md $SRC/requirements.md $SRC/installation.md $SRC/updating.md \
     $SRC/screenshots.md $SRC/content.md $SRC/content-in-templates.md \
     $SRC/taxonomies.md $SRC/menus.md $SRC/permissions.md $SRC/templates-routes.md \
     $SRC/templates.md $SRC/record-and-records.md $SRC/content-fetching.md $SRC/content-paging.md \
     $SRC/content-search.md $SRC/templatetags.md $SRC/extensions.md $SRC/internals.md \
     $SRC/contributing.md $SRC/code-quality.md $SRC/locales.md $SRC/nut.md  \
     $SRC/maintenancemode.md $SRC/credits.md $SRC/roadmap.md $SRC/otherresources.md)

### Removing trailing empty newlines, but leaving one empty line at end
for i in "${FILES[@]}"
do
   a=$(<$i); printf '%s\n\n' "$a" > $i
   FLIST="$FLIST $i"
done

cat $FLIST \
   | sed -e "s/<img src=\"/${REPL}/g" \
   | pandoc -S -o $1