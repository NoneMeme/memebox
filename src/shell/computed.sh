#! /bin/bash
echo 'export default {
  items: [' > ./static/scripts/config.js

find meme -type f -print0 | grep -z -i -E '\.(jpg|png|jfif|webp|gif|jpeg|bmp)$' | sort -z | while IFS= read -r -d '' file_name
do
    echo -n '    ' >> ./static/scripts/config.js
    echo $(jq -R -c . <<< "$file_name")',' >> ./static/scripts/config.js
    # echo ',' >> ./static/scripts/config.js
done

echo '  ]
}' >> ./static/scripts/config.js
