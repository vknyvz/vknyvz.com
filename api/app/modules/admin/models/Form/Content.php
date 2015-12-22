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
class Admin_Model_Form_Content extends vkNgine_Form_Design
{
    public function init()
    {
    	parent::init('adminFormContent');
    	
		$this->addElements(array(	
			new vkNgine_Form_Element_Hidden('contentId'),
			new vkNgine_Form_Element_Textarea(
				'value', 
				array('label' => Zend_Registry::get('t')->_('Content'),
					  'class' => 'field text medium',
					  'style' => 'width:460px;height:314px'), 	
		   		true),
			new vkNgine_Form_Element_Submit(
				'submit',
				array('value' => Zend_Registry::get('t')->_('Save'),
					  'ignore' => true,
					  'class' => 'ui-corner-all float-right ui-button')),
		));	 
    }
    
    public function setHidden($value)
    {
    	$this->getElement('contentId')->setValue($value);
    }
}