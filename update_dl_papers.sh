#!/bin/bash
# Start Hardcoding Variables
ARXIV_PATH="$HOME/PycharmProjects/arXiv-Daily-Mailer/arxiv_mailer.py"
BLOG_PATH="$HOME/PycharmProjects/krishnachaitanya7.github.io"
ANACONDA_PATH="/usr/bin/python"
DL_PAPERS_MD="$BLOG_PATH/README.md"
# End hardcoding variables
cd "$BLOG_PATH"
# Pulling all the latest updates
git pull
rm $DL_PAPERS_MD
$ANACONDA_PATH $ARXIV_PATH --print True >> $DL_PAPERS_MD
git add .
git commit -m 'Update DL Papers'
git push -u origin main