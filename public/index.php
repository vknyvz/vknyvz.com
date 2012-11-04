<?php
defined('BASE_PATH') || define('BASE_PATH', realpath(dirname(__FILE__)));
defined('APPLICATION_PATH') || define('APPLICATION_PATH', BASE_PATH . '/../app');
defined('APPLICATION_ENV') || define('APPLICATION_ENV', (getenv('APPLICATION_ENV') ? getenv('APPLICATION_ENV') : 'production'));

set_include_path(implode(PATH_SEPARATOR, array(realpath(APPLICATION_PATH . '/../library'), get_include_path(), )));
   
require_once 'Zend/Application.php';

switch(APPLICATION_ENV) {
	case 'development':
		define('SERVER_PATH', '/var/www/vkn.com');
		break;	
	case 'production':
	case '':		
		define('SERVER_PATH', '/home2/volkanan/www/vknyvz');
		break;	
}

$application = new Zend_Application(APPLICATION_ENV, APPLICATION_PATH . '/configs/config.xml');
$application->bootstrap()->run();