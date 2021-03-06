#! /bin/bash
set -e

# This script assumes you're already serving the site using --prefix-paths

echo "Checking for broken links.."

if ./gatsby/node_modules/broken-link-checker/bin/blc -q -r -e -o http://localhost:9000
then
  echo "No broken internal links!"
else
  exit 1
fi

