#!/bin/bash

alias brave="/Applications/Brave\ Browser.app/Contents/MacOS/Brave\ Browser"

while IFS= read -r site
do
  file_name=${site//\/}
  file_name=${file_name//./-}
  file_name=${file_name/"https:"/""}
  file_name=${file_name/"http:"/""}

  brave --headless --disable-gpu --enable-logging --screenshot --hide-scrollbars --window-size=1366,768 --screenshot=screenshots/$file_name.png $site
done < data/sites.txt