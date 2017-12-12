## Tandem's WordPress Boilerplate

**Utilizes Tandem's modified version of [Bedrock](https://github.com/thinktandem/bedrock)**

You can clone or fork this repo and make your own site.

**This Boilerplate includes**

<ins>Theming / Site Building</ins>
* [Timber](https://github.com/timber/timber)
* [Ke$ha: Tandem's Timber Starter Theme](https://github.com/thinktandem/kesha)
* [Advanced Custom Fields](https://wordpress.org/plugins/advanced-custom-fields/)
* [FooGallery](https://wordpress.org/plugins/foogallery/)
* [Ninja Forms](https://wordpress.org/plugins/ninja-forms/)

<ins>Config Management / Development</ins>
* [Debug Bar](https://wordpress.org/plugins/debug-bar/)
* [WP-CFM](https://wordpress.org/plugins/wp-cfm/)

<ins>SEO</ins>
* [Yoast SEO](https://wordpress.org/plugins/wordpress-seo/)
* [WP SEO Structured Data Schema](https://wordpress.org/plugins/wp-seo-structured-data-schema/)
* [Google Analytics Dashboard for WP (GADWP)](https://wordpress.org/plugins/google-analytics-dashboard-for-wp/)

<ins>Performance</ins>
* [WP Redis](https://wordpress.org/plugins/wp-redis)
* [Autoptimize](https://wordpress.org/plugins/autoptimize/)

_Not Included But Recommended_

* [WP Rocket](https://wp-rocket.me/): Caching plugin, most excellent. It is a paid only plugin, there is no composer repo.
* [All-in-One WP Migration](https://wordpress.org/plugins/all-in-one-wp-migration/): Great for moving your site around to different instances / servers.
* [Velvet Blues Update URLs](https://wordpress.org/plugins/velvet-blues-update-urls/): Run this after moving your site around to fix all your urls.


### Lando Install

After duplicating the repo, run the setup with:

_node install_

```bash
npm run setup
```

_non-node install_

```bash
chmod +x build.sh && ./build.sh
```

### Post Install

**Yoast SEO**

Is enabled by WP-CFM, but you will need to configure it: ```wp/wp-admin/admin.php?page=wpseo_dashboard```

**GADWP**

When the site is ready for live, enable this plugin and set it up here: ```wp/wp-admin/admin.php?page=gadash_settings```

**Redis**

If you are using Redis, then you will need to do a few more steps: https://wordpress.org/plugins/wp-redis/#installation


