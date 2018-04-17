#!/usr/bin/env bash

GREEN='\033[0;32m'
RED='\033[0;31m'
DEFAULT_COLOR='\033[0;0m'

printf "${GREEN}"
echo "********************************"
echo "** Tandem WordPress Installer **"
echo "********************************"
printf "${DEFAULT_COLOR}"

echo "Run Install? (y/n)"
read -e run

if [ "$run" == n ] ; then
exit
else

echo "Lando Site Name: "
read -e sitename

# site url
url="http://$sitename.lndo.site"

# Update the .lando.ynml file
sed -i -e "s/demosite/$sitename/g" .lando.yml

echo "WordPress Username: "
read -e username

echo "WordPress Password: "
read -e password

echo "WordPress Email: "
read -e email

echo "ACP Pro Key: "
read -e acp

# copy and adjust the env file
cp .env.lando .env
sed -i -e "s#demosite#$url#g" .env
sed -i -e "s#acpkey#$acp#g" .env

# install WordPress
lando wp core install --url="$url" --title="$sitename" --admin_user="$username" --admin_password="$password" --admin_email="$email"

# Import config
lando wp plugin activate wp-cfm
lando wp config pull install

# Make sure the theme is enabled
lando wp theme activate kesha

echo "Installation is complete."
echo ""
echo "Username: $username"
echo "Password: $password"
echo "Email: $email"
echo ""

fi
