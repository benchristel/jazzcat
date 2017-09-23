#!/bin/bash

rm -rf .test-tmp
mkdir -p .test-tmp
&>/dev/null pushd .test-tmp

JAZZCAT=../index.js

cat > foo.js << 'EOF'
function foo() {
  console.log("hello")
}
EOF

$JAZZCAT foo.js > out.js

if ! [ 4 -eq "$(wc -l out.js | awk '{print $1}')" ]; then
  echo "FAILED: out.js should have 3 lines"
  exit 1
fi

echo "All tests passed!"
