# PHP-FPM Docker Image
PHP-FPM with [modules required by GravCMS](https://learn.getgrav.org/17/basics/requirements#php-requirements) not in default php-fpm image (the other required modules are enabled by default):
- zip 
- gd

[Optional modules](https://learn.getgrav.org/17/basics/requirements#optional-modules) in grav-optional tags:
- acpu 
- opcache 
- xdebug 
- yaml

Modules listed above are installed and enabled. 
If you need to customize these modules, or need more standard php modules, you'll need to add them to your php.ini file and make it accessible to your container.

# Available Images

`grav-8.2` : Latest php 8.2 fpm 

`grav-8.3` : Latest php 8.3 fpm 

`grav-8.4` : Latest php 8.4 fpm 

`grav-8.2-optional` : Latest php 8.3 fpm with optional modules installed and enabled 

`grav-8.3-optional` : Latest php 8.3 fpm with optional modules installed and enabled 

`grav-8.4-optional` : Latest php 8.4 fpm with optional modules installed and enabled 

`grav-alpine` : Latest php 8.4 fpm, Alpine base

`grav-alpine-optional` : Latest php 8.4 fpm, Alpine base, with optional modules installed and enabled
