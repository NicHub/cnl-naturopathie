#!/bin/bash

OUT_PATH="/Users/nico/Sites/cnl-naturopathie/hugo_output/"
rm -rf $OUT_PATH
# hugo server --buildDrafts --watch --destination=$OUT_PATH
hugo server --destination=$OUT_PATH
# hugo --destination=$OUT_PATH

# Intéressant
# hugo server --buildDrafts -w      --theme=redlounge
# hugo server --buildDrafts -w      --theme=tinyce
# hugo server --buildDrafts -w      --theme=polymer
# hugo server --buildDrafts -w      --theme=persona
# hugo server --buildDrafts -w      --theme=material-lite
# hugo server --buildDrafts -w      --theme=liquorice
# hugo server --buildDrafts -w      --theme=landing-page-hugo
# hugo server --buildDrafts -w      --theme=hyde-x
# hugo server --buildDrafts -w      --theme=hyde
# hugo server --buildDrafts -w      --theme=hugo-minimalist
# hugo server --buildDrafts -w      --theme=grid-side
# hugo server --buildDrafts -w      --theme=greyshade
# hugo server --buildDrafts -w      --theme=freelancer
# hugo server --buildDrafts -w      --theme=crisp

# Très Intéressant
# hugo server --buildDrafts -w      --theme=material-design
# hugo server --buildDrafts -w      --theme=hugoscroll
# hugo server --buildDrafts -w      --theme=hugo-zen
# hugo server --buildDrafts -w      --theme=hugo-bootswatch

# Encore plus intéressant
# hugo server --buildDrafts -w      --theme=herring-cove
# hugo server --buildDrafts -w      --theme=hugo-uno
# hugo server --buildDrafts -w      --theme=heather-hugo

# ONE PAGE
# hugo server --buildDrafts -w      --theme=creative
# hugo server --buildDrafts -w      --theme=artists
# hugo server --buildDrafts -w      --theme=agency
