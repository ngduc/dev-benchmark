#!/usr/bin/bash
f=README.md
logEnd () {
  echo $(echo "$(date +%s.%N) - $start" | bc) > temp && tail temp -n 3 | head -1 >> $f
}
logEnd2 () {
  echo $(echo "$(date +%s.%N) - $start" | bc) > temp && tail temp -n 3 | head -1 >> ../$f
}
clean () {
  rm -rf benchmark1 > temp
  rm -rf benchmark2 > temp
  rm temp
}

echo >> $f
echo "### $1" >> $f
echo >> $f

echo "#### CRA" >> $f
echo "- create" >> $f
start=$(date +%s.$N)
npx create-react-app benchmark1 --template typescript
logEnd

cd benchmark1
echo "- build" >> ../$f
start=$(date +%s.$N)
npm run build
logEnd2

echo "- run tests" >> ../$f
start=$(date +%s.$N)
CI=true npm run test
logEnd2

cd ..
clean

# ---------

echo >> $f
echo "#### express" >> $f
echo "- create" >> $f
start=$(date +%s.$N)
npx express-generator-typescript --with-auth benchmark2
logEnd

cd benchmark2
echo "- build" >> ../$f
start=$(date +%s.$N)
npm run build
logEnd2

echo "- run tests" >> ../$f
start=$(date +%s.$N)
npx ts-node -r tsconfig-paths/register ./spec
logEnd2

cd ..
clean
