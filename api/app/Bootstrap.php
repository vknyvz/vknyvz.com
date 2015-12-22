<?php
class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{
    /**
     * initalize application autoloading 
     * 
     * @return Zend_Loader_Autoloader
     */
    protected function _initAutoload()
    {
    	$autoloader = new Zend_Application_Module_Autoloader(array(
    			'namespace' => '',
    			'basePath'  => dirname(__FILE__),
    	));
    
    	$autoloader = Zend_Loader_Autoloader::getInstance();
    	
    	return $autoloader;
    }
    
	/**
	 * initalize document type, title, and meta
	 */
	protected function _initDoctype()
	{
		$this->bootstrap('layout');
		$this->bootstrap('view');
		$layout	= $this->getResource('layout');
		$view	= $this->getResource('view');
		
		Zend_Registry::set('layout', $layout);
		Zend_Registry::set('view', $view);
				
		$view->doctype('HTML5');
		$view->headMeta()->appendHttpEquiv('Content-Type', 'text/html;charset=utf-8');
		
		$view->headTitle()->setSeparator(' - ');
	}
	
	/**
	 * initalize app config
	 */
	protected function _initConfig()
	{
        vkNgine_Config::getSystemConfig();
    } 
	
	/**
	 * initalize timezone
	 */
	protected function _initTimezone()
	{
		$config = vkNgine_Config::getSystemConfig();
		
		date_default_timezone_set($config->phpSettings->date->timezone);
	}
	
	/**
	 * initalize caching
	 */
	protected function _initCache()
	{
		$config = vkNgine_Config::getSystemConfig();
		$cache = new vkNgine_Cache($config->cache->use, $config->cache->type);
		Zend_Registry::set('cache', $cache);
		Zend_Db_Table_Abstract::setDefaultMetadataCache($cache->getCacheObject());
	}
	
	/**
	 * initalize logging
	 */
	protected function _initLogger() 
	{	
		$logger = new vkNgine_Log();
		Zend_Registry::set('logger', $logger);
		
		$resource = $this->getPluginResource('db');
		$db = $resource->getDbAdapter();	
		
		$columnMapping = array('url' => 'url',   'userAgent' => 'userAgent', 
							   'info' => 'info', 'referrer' => 'referrer', 
							   'userId' => 'userId', 'priority' => 'priority',
							   'dateInserted' => 'dateInserted', 'message' => 'message');
		
		$writer_db = new Zend_Log_Writer_Db($db, 'log', $columnMapping);		
        
		$logger->addWriter($writer_db);
		
		Zend_Registry::set('logger', $logger);		
	}
	
	/**
	 * initalize session
	 */
	protected function _initSession()
	{
		$resource = $this->getPluginResource('db');
		$db = $resource->getDbAdapter();	
		Zend_Db_Table_Abstract::setDefaultAdapter($db);
		
		$config = array('name' 			 => 'sessions',
						'primary'        => 'sessionId',
						'modifiedColumn' => 'modified',
						'dataColumn'     => 'data',
						'lifetimeColumn' => 'lifetime',
						'lifetime' 		 => 60 * 60 * 24 * 14 // 14 days
		);	
						
		Zend_Session::setSaveHandler(new Zend_Session_SaveHandler_DbTable($config));
	}
	
	/**
	 * initalize injecting hash field to every form
	 */
	protected function _initSecurity()
	{
		$hashing = Zend_Controller_Front::getInstance();
		$hashing->registerPlugin(new vkNgine_Controller_Plugin_CSRFSecurity(
						array('expiryTime' => vkNgine_Config::getSystemConfig()->settings->formexpiretime)));
	}
	
	/**
	 * initalize debugging
	 */
	protected function _initDebug()
    {
    	$config = vkNgine_Config::getSystemConfig();
    	
    	if ($config->settings->debug) {
    		define('DEBUG', true);
    	}
    	
    	if (false === defined('DEBUG')) {
    		define('DEBUG', false);
    	}
    	
    	$logger = Zend_Registry::get('logger');
		$writer = new Zend_Log_Writer_Firebug();
		$logger->addWriter($writer);
    }
    
	/**
	 * initalize languages
	 */
	protected function _initLanguage()
	{
	    $options = $this->getOptions();
	    
	    $language = new Zend_Session_Namespace('language');
	   	if($language->__isset('session')){
	        $lang = $language->lang;
	    }
	    else{
	        $lang = $options['language']['locale'];
	    }
	    
	    $translate = new Zend_Translate('csv', $options['language']['file'][$lang]['master']);
	    $translate->addTranslation(
    		array(
    				'content' => $options['language']['file'][$lang]['master'],
    				'locale'  => $lang
    		)
	    );
	    
	    $translate->addTranslation(
    		array(
    				'content' => $options['language']['file'][$lang]['app'],
    				'locale'  => $lang
    		)
	    );
	    
		Zend_Registry::set('t', $translate);
		Zend_Locale::setDefault($lang);
	}
	
	/**
	 * initalize ZF Debug
	 */
	protected function _initZFDebug()
	{
		if(!DEBUG) {
			return;
		}
				
	    $options = array(
	       'jquery_path' => 'http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js',
	       'plugins' => array('Variables',
						      'Html',
						      'Database',
						      'File' => array('basePath' => BASE_PATH),
						      'Memory',
						      'Time',
	    				      'ZFDebug_Controller_Plugin_Debug_Plugin_Auth',
						      'Registry',
						      'Exception')
	     );
		
	    $debug = new ZFDebug_Controller_Plugin_Debug($options);

	    $this->bootstrap('frontController');
	    $frontController = $this->getResource('frontController');
	    $frontController->registerPlugin($debug);
	}
}