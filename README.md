CsnCmsApplication
=================
Complete Zend Framework 2 Application, built using *coolcsn* modules

### An enhanced ZF2 Skeleton application ###
*CsnCmsApplication* is a ZF2 Skeleton application with pre-installed modules for Authentication, Authorization, Navigation and CMS based on *Doctrine*. **It is a great place to start building your ZF2 web applications.**

### Installation ###
- Download the application from [the github repository](https://github.com/coolcsn/CsnCmsApplication) via the **Download ZIP** button and extract.
- Set a [virtual host](http://framework.zend.com/manual/2.2/en/user-guide/skeleton-application.html#virtual-host) to the project folder.
- In a console run `php composer.phar self-update` to update your *Composer*, followed by `php composer.phar install` to install all dependencies (it could take a couple of minutes).
- Create a new MySql database (using *PhpMyAdmin* for example).
- Go to `./config/autoload` folder of your project and remove the **.dist** extensions from the files where needed (those files won't be tracked by *Git* as they are keeping sensitive information).
- Edit the file `./config/autoload/doctrineorm.local.php`. Replace the connection/database parameters with your actual values for the database you created in a previous step.
- Edit the file `./config/autoload/mail.config.local.php`. Replace the SMTP server parameters with your actual values (You can use your *gmail* account credentials for example to test it out). The mail server configuration is used by *CsnUser* module for sending confirmation emails to registered users, sending new passwords in case of forgotten ones, etc.
- Run `./vendor/bin/doctrine-module orm:schema-tool:create` to generate the database schema.
- Import the SQL data (for sample roles, languages and CMS resources) located in `./data/SampleData.sql`. You can easily do that with *PhpMyAdmin*.

### Optional configuration ###
- Edit the file `./config/autoload/csnuser.global.php` to adjust your Authentication preferences (you may want to change tha static salt for example).
- Edit the file `./config/autoload/acl.global.php` to control the access of your users to different resources in your application.
- Edit the file `./config/autoload/navigation.global.php` to change what is displayed in your navigation. Note that the navigation is coupled with the ACL to make sure there are no links to non-accessible resources for the current user.

### Now what? ###
- Open your favourite browser and navigate to the virtual host address you've set up (for example `coolcsn.localhost`). Register an user and log in. Enjoy! :)
- If you want to try out the CMS, make sure your user has **admin** rights to be able to create new articles (this requires a simple database record update). Alternatively you can modify the ACL to allow members or even guests to modify articles. Then simply navigate to [coolcsn.localhost/csn-cms/article].
- Check [coolcsn's github profile](https://github.com/coolcsn) for other great modules. We will highly appreciate if you submit issues and give us feedback for your experience with *coolcsn* modules.