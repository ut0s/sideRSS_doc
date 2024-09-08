#!/bin/bash
# @file publish.sh
# @brief

file=./privacy_policy_and_disclaimer.org
emacs --batch --eval "(require 'org)" $file --funcall org-html-export-to-html
mv "${file%.*}".html ./docs/index.html
