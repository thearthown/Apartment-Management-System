<?php

namespace App\Models;

class User
{
	public $rent = 25000;
	public $totalamount;
	public $apartments;
    public function setApartments($apartments){
		$this->apartments = $apartments;
	}
	public function getRent(){
		$this->totalamount = $this->rent * $this->apartments;
		return $this->totalamount;
	}
}