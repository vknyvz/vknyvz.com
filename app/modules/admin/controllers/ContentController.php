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
class Admin_ContentController extends vkNgine_Admin_Controller
{
	public function indexAction()
	{
		parent::init();
		parent::ajaxEnabled();
		
		$modelContents = new Public_Model_Contents();
		$form = self::getContentForm();
		
		$contentId = $this->_getParam('contentId');
		$contentId = (string) $contentId;
		
		$form->setHidden($contentId);
		
		$contents = $modelContents->fetch($contentId);
		
		$populateData = array();
		    
		if (count($contents) > 0) {
			$populateData = $contents->toArray();
		}
		
		$form->populate($populateData);
		
		$request = $this->getRequest();
		    
		if ($request->isPost()) {
			$post = $request->getPost();
		
			if ($form->isValid($post)) {
				$modelContents->update($contentId, $post);
		
				echo Zend_Json::encode(array('success' => 1, 
											 'title'   => $this->t->_('Success Message'),
										     'message' => $this->t->_('Content was successfully updated'),
											 'icon'    => 'success'
				));
				exit;
			}
			else {
				echo Zend_Json::encode(array('title'   => $this->t->_('Error Message'),
									      	 'message' => $this->t->_($this->t->_('Please fill out all required fields')),
											 'icon'    => 'error' ));
				exit;
			}
		}
		
		$this->view->contentId = $contentId;
	    $this->view->form = $form;
	}
	
	private function getContentForm()
	{
		$form = new Admin_Model_Form_Content(array(
				'method' => 'post',
				'action' => $this->_helper->url(null, 'content'),
		));
	
		return $form;
	}
}