<?php

class UserTest extends \PHPUnit\Framework\TestCase
{

	private $user;

	public function test()
	{

		$this->user = new \App\Models\User;
		$this->user->setApartments(2);
		$this->assertEquals($this->user->getRent(),50000);
	}

}