#!/usr/bin/bash
f=README.md
logEnd () {
  echo $(echo "$(ruby -e 'puts "%.2f" % Time.now') - $start" | bc) > temp && tail -n 3 temp | head -1 >> $f
}
logEnd2 () {
  echo $(echo "$(ruby -e 'puts "%.2f" % Time.now') - $start" | bc) > temp && tail -n 3 temp | head -1 >> ../$f
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
echo >> $f
echo "- create" >> $f
start=$(ruby -e 'puts "%.2f" % Time.now')
npx create-react-app benchmark1 --template typescript
logEnd

cd benchmark1
echo "- build" >> ../$f
start=$(ruby -e 'puts "%.2f" % Time.now')
npm run build
logEnd2

echo "- run tests" >> ../$f
start=$(ruby -e 'puts "%.2f" % Time.now')
CI=true npm run test
logEnd2

cd ..
clean

# ---------

echo >> $f
echo "#### express" >> $f
echo >> $f
echo "- create" >> $f
start=$(ruby -e 'puts "%.2f" % Time.now')
npx express-generator-typescript --with-auth benchmark2
logEnd

cd benchmark2
echo "- build" >> ../$f
start=$(ruby -e 'puts "%.2f" % Time.now')
npm run build
logEnd2

echo "- run tests" >> ../$f
start=$(ruby -e 'puts "%.2f" % Time.now')
npx ts-node -r tsconfig-paths/register ./spec
logEnd2

cd ..
clean
