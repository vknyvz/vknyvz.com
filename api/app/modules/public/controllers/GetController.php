<?php

class GetController extends vkNgine_Public_Controller
{
    public function init()
    {
        parent::init();
    }
    
    public function profileAction()
    {
        $modelContent = new Public_Model_Contents();
         
        $value = $modelContent->fetch('profile');        
        
        echo json_encode(array('success' => true,
                               'html' => $value['value'],
        ));
        exit;
    }
    
    public function workAction()
    {
        $modelContent = new Public_Model_Contents();
         
        $value = $modelContent->fetch('work');
                
        echo Zend_Json::encode(array('success' => true,
                                     'html' => $value['value'],
        ));
        exit;
    }
    
    public function skillAction()
    {
        $modelContent = new Public_Model_Contents();
         
        $value = $modelContent->fetch('skill');
                
        echo Zend_Json::encode(array('success' => true,
                                     'html' => $value['value'],
        ));
        exit;
    }
    
}