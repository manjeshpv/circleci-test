#! /bin/bash


echo "Changing Directory to ./dist"
cd dist

echo "Setting git config user.email and user.name"
git config --global user.email "manjesh@quetzal.in"
git config --global user.name "Manjesh V"

echo "Git Init"
git init

echo "Adding Remote"
git clone https://github.com/manjeshpv/circleci-test.dist

echo date >> index.html

echo "Adding files to git"
git add *

echo "Commiting..."
git commit -m "Todo: comming Message"

echo "Started deploying"
git push origin partner/staging

echo "Pushed to git successfully Successfully!"
exit 0
