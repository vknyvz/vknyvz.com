<?php
/**
 * vkNgine3 Admin System
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the new BSD license.
 *
 * @category    core
 * @package     vkNgine3
 * @copyright   Copyright (c) 2011 Volkan Yavuz (http://www.vknyvz.com)
 */
class vkNgine_Public_Controller extends Zend_Controller_Action
{	
	protected $user = null;
	
	public function init()
    {    	
    	parent::init();
    	
		$helper = new vkNgine_View_Helper_PublicUrl();    	
    	$this->view->registerHelper($helper, 'publicUrl');
    	
    	$this->view->t = Zend_Registry::get('t');
		$this->t = Zend_Registry::get('t');
    }
}