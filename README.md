Tandem's WordPress Boilerplate
------------------------------

**Utilizes Tandem's modified version of [Bedrock](https://github.com/thinktandem/bedrock)**

You can clone or fork this repo and make your own site.

**This Boilerplate includes**

<ins>Theming / Site Building</ins>
* [Timber](https://github.com/timber/timber)
* [Ke$ha: Tandem's Timber Starter Theme feat. Bootstrap 4](https://github.com/thinktandem/kesha)
* [Advanced Custom Fields PRO](https://www.advancedcustomfields.com/pro/)
* [FooGallery](https://wordpress.org/plugins/foogallery/)
* [FooGallery Owl Carousel Template](https://wordpress.org/plugins/foogallery-owl-carousel-template/)
* [Ninja Forms](https://wordpress.org/plugins/ninja-forms/)

<ins>Config Management / Development</ins>
* [Debug Bar](https://wordpress.org/plugins/debug-bar/)
* [WP-CFM](https://wordpress.org/plugins/wp-cfm/)

<ins>SEO</ins>
* [Yoast SEO](https://wordpress.org/plugins/wordpress-seo/)
* [WP SEO Structured Data Schema](https://wordpress.org/plugins/wp-seo-structured-data-schema/)
* [Google Analytics Dashboard for WP (GADWP)](https://wordpress.org/plugins/google-analytics-dashboard-for-wp/)
* [Head, Footer and Post Injections](https://wordpress.org/plugins/header-footer/)
* [Safe Redirect Manager](https://wordpress.org/plugins/safe-redirect-manager/)

<ins>Performance</ins>
* [WP Redis](https://wordpress.org/plugins/wp-redis)
* [Autoptimize](https://wordpress.org/plugins/autoptimize/)

_Not Included But Recommended_

* [WP Rocket](https://wp-rocket.me/): Caching plugin, most excellent. It is a paid only plugin, there is no composer repo.
* [All-in-One WP Migration](https://wordpress.org/plugins/all-in-one-wp-migration/): Great for moving your site around to different instances / servers.
* [Velvet Blues Update URLs](https://wordpress.org/plugins/velvet-blues-update-urls/): Run this after moving your site around to fix all your urls.


Starting a new Project
----------------------

* clone this repo:

```bash
git clone git@github.com:thinktandem/wp-boilerplate.git YOURPROJECT
```

* run the `build.sh` script:

```bash
cd YOURPROJECT
./build.sh
```

The build script will prompt your for the name of the new project, and the information needed to install wordpress. It then starts lando, runs `composer install`, `npm install` in project root and in the `kesha` theme, then installs WordPress.

Of note the `build.sh` script needs a `ACF_PRO_KEY` without this key the `composer install` step will fail and nothing after it will be run. You can get the key from a Tandem project lead.

Post Install
------------

**Yoast SEO**

Is enabled by WP-CFM, but you will need to configure it: ```wp/wp-admin/admin.php?page=wpseo_dashboard```

**GADWP**

When the site is ready for live, enable this plugin and set it up here: ```wp/wp-admin/admin.php?page=gadash_settings```

**Redis**

If you are using Redis, then you will need to do a few more steps: https://wordpress.org/plugins/wp-redis/#installation

**Ke$ha Theme**

This is a starter theme and it meant to be hacked up.  If you don't want to have your changed overridden by composer update, do one of the following:

1. Rename the theme and run ```find web/ -type d -name '.git*' -exec rm -rf {} +```.
2. Remove the kesha theme from composer.json, then run ```composer update``` again.  Go to your themes folder and run ```git clone git@github.com:thinktandem/kesha.git```. Then run ```find web/ -type d -name '.git*' -exec rm -rf {} +```.

