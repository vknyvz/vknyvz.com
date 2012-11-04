<?php
class Public_Model_Portfolio extends vkNgine_DbTable_Abstract
{
	protected $_name = 'portfolio';
	protected $_primary	= 'portfolioId';
		
	/**
	 * fetch a single portfolio item
	 * 
	 * @param int $portfolioId
	 */
	public function fetch($portfolioId) 
	{
		$select = $this->select();
		
		$select->where('portfolioId = ?', (string) $portfolioId);
		$row = $this->fetchRow($select);
		
		return $row;			
	}
	
	public function fetchAll()
	{
		$select = $this->select();	
		
		$select->order('order ASC');
		return parent::fetchAll($select);
	}
}