#!/bin/bash
set -e

mkdir -p public

for file in content/*.html; do
  name=$(basename "$file")
  cat templates/header.html "$file" templates/footer.html > "public/$name"
  echo "Built: public/$name"
done

cp -r css public/
cp -r fonts public/
[ -d img ] && cp -r img public/
cp CNAME public/ 2>/dev/null || true

echo "Done"