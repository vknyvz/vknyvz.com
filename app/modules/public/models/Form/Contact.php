<?php
class Public_Model_Form_Contact extends vkNgine_Form_Design
{
	public function init()
    {
    	$this->setAttrib('id', 'contactForm');
		
		$config = Zend_Registry::get('config');
		
		$this->addElements(array(
				new vkNgine_Form_Element_Text(
						'name',
						array('value' => Zend_Registry::get('t')->_('Name'),
							  'label' => null,
							  'class' => 'textbox',
							  'notEmptyErrorMessage' => Zend_Registry::get('t')->_('You need to type your name'),
							  'removeDecorators' => true),
						true),
				new vkNgine_Form_Element_Email(
						'email',
						array('value' => Zend_Registry::get('t')->_('Email'),
							  'label' => null,
							  'class' => 'textbox',
							  'removeDecorators' => true),
						true),
				new vkNgine_Form_Element_Textarea(
						'message',
						array('value' => Zend_Registry::get('t')->_('Message'),
							  'label' => null,
							  'style' => 'height:250px',
							  'notEmptyErrorMessage' => Zend_Registry::get('t')->_('You need to type a message'),
							  'removeDecorators' => true),
						true),
				new vkNgine_Form_Element_Submit(
						'submit',
						array('value' => Zend_Registry::get('t')->_('Send Message'),
							  'ignore' => true,
							  'class' => 'form_btn',
							  'removeDecorators' => true)),
		));
	}	
}