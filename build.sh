#!/usr/bin/env bash

echo "******************************"
echo "** Tandem Bedrock Installer **"
echo "******************************"

echo "Run Install? (y/n)"
read -e run

if [ "$run" == n ] ; then
exit
else

echo "Lando Site Name: "
read -e sitename

# site url
url="http://$sitename.lndo.site"

# Generate the lando file
cp .lando.example .lando.yml
sed -i -e "s/demosite/$sitename/g" .lando.yml

echo "WordPress Username: "
read -e username

echo "WordPress Password: "
read -e password

echo "WordPress Email: "
read -e email

# Install dependencies
lando composer install

# Start up the site
lando start

# copy and adjust the env file
cp .env.lando .env
sed -i -e "s#demosite#$url#g" .env

# install WordPress
lando wp core install --url="$url" --title="$sitename" --admin_user="$username" --admin_password="$password" --admin_email="$email"

# Import config
lando wp plugin activate wp-cfm
lando wp config pull install

# Install the node modules.
npm i

echo "Installation is complete."
echo ""
echo "Username: $username"
echo "Password: $password"
echo "Email: $email"
echo ""

fi
