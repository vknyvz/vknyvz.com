<?php

class IndexController extends vkNgine_Public_Controller
{
	public function init()
	{
		parent::init();		
	}
	
    public function indexAction()
    {    
    	$modelContent = new Public_Model_Contents();
    	$modelPortfolio = new Public_Model_Portfolio();
    	
    	$content = array();
		foreach ($modelContent->fetchAll() as $contentt) {
			$value = $modelContent->fetch($contentt['contentId']);	
			$content[$contentt['contentId']] = $value['value'];	
		}
		
		$form = new Public_Model_Form_Contact();
						
		$request = $this->getRequest();
		
		$config = Zend_Registry::get('config');
		
		if($request->isPost()) {
			
			$post = $request->getPost();
			
			if($form->isValid($post)) {	
				if(self::blackListedIPs($_SERVER['REMOTE_ADDR'])){
					$errors['token'] = array('message' => 'You have been banned from using this contact form');
					echo Zend_Json::encode(array('fail' => $errors));
					exit;	
				}
				
				$config = Zend_Registry::get('config');
				
				$tr = new Zend_Mail_Transport_Smtp($config->mail->server, $config->mail->toArray());
				Zend_Mail::setDefaultTransport($tr);
				
				$mail = new Zend_Mail();
				$mail->setBodyHtml('
					<p>
						<b>Name:</b> ' . $post['name'] . ' <br>
						<b>Email:</b> ' . $post['email'] . ' <br>
						<b>Message:</b> ' . nl2br($post['message']) . ' <br><br> 
						<b>Sender IP:</b> ' . $_SERVER['REMOTE_ADDR'] . ' <br><br><br>
						<em>vknyvz[dot]com &copy ' . date('Y') . ' <br></em>
					</p>
				');
				
				$mail->setFrom($config->mail->username, $post['name']);
				$mail->addTo($config->mail->username);				
				$mail->setSubject('Received from vknyvz.com');
				$mail->send();
							
				echo Zend_Json::encode(array('success' => 1));
				exit;	
			}
			else {				
				echo Zend_Json::encode(array('fail' => $this->t->_('Please fill out all required fields')));
				exit;		
			}						
		}		
		
		$this->view->portfolio = $modelPortfolio;
		$this->view->config = $config;
		$this->view->form = $form;
    	$this->view->content = $content;    	
    }   
    
    public function languageAction()
    {
    	$lang = $this->_getParam('lang');
    	
    	$language = new Zend_Session_Namespace('language');
    		 
   		if($lang) {
   			$language->lang = $lang;
   			$language->session = true;
   			$language->config = false;
    	}
    	
    	echo Zend_Json::encode(array('success' => 1));
    	exit;
    }
        
    public function cvViewAction()
    {
    	$file = '/'. $this->_getParam('file');
    	 
    	$file = vkNgine_Config::getSystemConfig()->assets->path . '/cv/v7' . $file;
    	
    	if(!is_file($file)){
    		echo 'File doesn\'t exist!';
    		exit;
    	}
    	
    	$this->_helper->viewRenderer->setNoRender(true);
    	$this->view->layout()->disableLayout();
    	
    	header('Content-type: application/pdf');
    	header('Content-Disposition: attachment; filename="Volkan-Yavuz_CV.pdf"');
    	
    	readfile($file);
    }
    
    private function readChunks($file)
    {
    	$chunksize = 1*(1024*1024);
    	$buffer = '';
    	$handle = fopen($file, 'rb');
    	
    	if ($handle === false) {
    		return false;
    	}
    	while (!feof($handle)) {
    		$buffer = fread($handle, $chunksize);
    		print $buffer;
    	}
    	
    	return fclose($handle);
    }
    
    public function blackListedIPs($value)
    {
    	$IPs = array('91.224.160.146');
    	if(in_array($value, $IPs)){
    		return true;
    	} 
    	
    	return false;
    }    
}