#!/usr/bin/env bash

# echo "========================================================================================"

cd single-berry
echo "berry"
echo ""
# time (yarn install > /dev/null 2>&1 && echo "install ok" || echo "install fail")
# echo ""
time (yarn build-storybook > /dev/null 2>&1 && echo "build-storybook ok" || echo "build-storybook fail")
echo ""
# time (yarn build > /dev/null 2>&1 && echo "build ok" || echo "build fail")
# echo ""
# time (yarn test --watchAll=false > /dev/null 2>&1 && echo "test ok" || echo "test fail")
# echo ""
cd ..

# echo "========================================================================================"

cd single-berry-no-pnp
echo "berry-no-pnp"
echo ""
# time (yarn install > /dev/null 2>&1 && echo "install ok" || echo "install fail")
# echo ""
time (yarn build-storybook > /dev/null 2>&1 && echo "build-storybook ok" || echo "build-storybook fail")
echo ""
# time (yarn build > /dev/null 2>&1 && echo "build ok" || echo "build fail")
# echo ""
# time (yarn test --watchAll=false > /dev/null 2>&1 && echo "test ok" || echo "test fail")
# echo ""
cd ..

# echo "========================================================================================"

# cd single-yarn
# echo "yarn"
# echo ""
# time (yarn install > /dev/null 2>&1 && echo "install ok" || echo "install fail")
# echo ""
# time (yarn build-storybook > /dev/null 2>&1 && echo "build-storybook ok" || echo "build-storybook fail")
# echo ""
# time (yarn build > /dev/null 2>&1 && echo "build ok" || echo "build fail")
# echo ""
# time (yarn test --watchAll=false > /dev/null 2>&1 && echo "test ok" || echo "test fail")
# echo ""
# cd ..

# echo "========================================================================================"

# cd single-npm
# echo "npm"
# echo ""
# time (npm install > /dev/null 2>&1 && echo "install ok" || echo "install fail")
# echo ""
# time (npm run build-storybook > /dev/null 2>&1 && echo "build-storybook ok" || echo "build-storybook fail") 
# echo ""
# time (npm run build > /dev/null 2>&1 && echo "build ok" || echo "build fail") 
# echo ""
# time (npm run test -- --watchAll=false > /dev/null 2>&1 && echo "test ok" || echo "test fail") 
# echo ""
# cd ..

echo "========================================================================================"