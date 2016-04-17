# AVN WordPress Installation

This will install the core WordPress files with modified structure.

* [Requirements](#requirements)
* [Installation](#installation)
* [Plugin Structure](#plugin-structure)

### Requirements

- [Composer](https://getcomposer.org)
- PHP 5.4+

### Installation

- Clone this [repo](git@bitbucket.org:avndevteam/avn-wp-install.git) 

- Run `php composer.phar install`
     All provided repositories along with WordPress 4.5 will be installed.

     Composer will create create 3 folders;
     
         - avn (avn related content)
         - core (wordpress)
         - vendor (composer stuff)
        
- Install Wordpress and create `core/wp-config.php` as instructed by the installer.

- After the installation remove `core/wp-content` folder.

- Within  the `core/index.php` file. add `core` to the require path so it looks like this;
     - require( dirname( __FILE__ ) . '/core/wp-blog-header.php' ); 

- Add write permissions to `avn` folder, so that user added contents can be added later on.

- Add below line to `wp-config.php` just before the `wp-settings.php` line;
 ```
/**
  * AVN Settings
  */
 define('WP_HOME', 'http://' . $_SERVER['SERVER_NAME'] . '/');
 define('WP_SITEURL', 'http://' . $_SERVER['SERVER_NAME'] . '/core' );
 define('WP_CONTENT_DIR', dirname(__FILE__) . '/../avn' );
 define('WP_CONTENT_URL', 'http://' . $_SERVER['SERVER_NAME'] . '/avn' );
 define('WP_PLUGIN_DIR', dirname(__FILE__) . '/../avn/plugins' );
 define('WP_PLUGIN_URL', 'http://' . $_SERVER['SERVER_NAME'] . 'avn/plugins' );
 define('PLUGINDIR', dirname(__FILE__) . '/../avn/plugins' );
 define('DISALLOW_FILE_EDIT', true);
 $theme_root = WP_CONTENT_DIR . '/themes';
 define( 'UPLOADS', '../avn/uploads' );
```

- In the admin, activate AVN theme(maverick) or front-end won't work.

### Plugin Structure

Add new repositories to the installer composer.json file. Composer will install them into their appropriate folders.

     `mu-plugins` are located in avn/mu-plugins
     `plugins` are located in avn/plugins
     `themes` are located in avn/themes

Each plugin/theme needs to have a composer.json like this; 
```
{
      "name": "avndevteam/pretty-print",
      "description": "Pretty Prints a PHP Array.",
      "keywords": [],
      "type": "wordpress-muplugin",
      "homepage": "http://www.avn.com",
      "require": {
        "php": ">=5.4",
        "johnpbloch/wordpress": "4.5",
        "composer/installers": "~1.0"
       }
 }  
```   
  Availabe types are `wordpress-muplugin` `wordpress-plugin` `wordpress-theme`


That's it!
