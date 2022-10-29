#!/bin/bash

while IFS= read -r site
do
  file_name=${site//\/}
  file_name=${file_name//./-}
  file_name=${file_name/"https:"/""}
  file_name=${file_name/"http:"/""}

  chromium-browser --headless --disable-gpu --disable-software-rasterizer --use-gl=swiftshader --disable-software-rasterizer --disable-dev-shm-usage  --window-size=1366,1366 --no-sandbox --screenshot --hide-scrollbars --screenshot=screenshots/$file_name.png $site

done < data/sites.txt