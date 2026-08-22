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

echo "Done"