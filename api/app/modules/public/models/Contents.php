<?php
class Public_Model_Contents extends vkNgine_DbTable_Abstract
{
    protected $_name = 'contents';
	protected $_primary	= 'contentId';
	
	protected $_saveInsertDate	= true;
	protected $_saveUpdateDate	= true;	
		
	/**
	 * update a content
	 * 
	 * @param int $contentId
	 * @param array $data
	 */
	public function update($contentId, $data) 
	{
		$where = $this->getAdapter()->quoteInto('contentId = ?', (string) $contentId);
		parent::update($data, $where);
	}	
	
	/**
	 * fetch a single content
	 * 
	 * @param int $userId
	 */
	public function fetch($contentId) 
	{
		$select = $this->select();
		
		$select->where('contentId = ?', (string) $contentId);
		$row = $this->fetchRow($select);
		
		return $row;			
	}
	
	public function fetchAll()
	{
		$select = $this->select();	
		
		return parent::fetchAll($select);
	}
}