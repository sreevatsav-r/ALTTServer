<?php
  
   class Functions
   {	
		public function fetch_all_hotel()
		{
			global $pdo;
			
			$query= $pdo->prepare("SELECT * FROM users ORDER BY `users`.`tilldate` ASC;;");
			$query->execute();
			return $query ->fetchAll();
		}
		
		public function fetch_all_hotel_not_reg()
		{
			global $pdo;
			
			$query= $pdo->prepare("SELECT * FROM temp_users where email_status ='no';");
			$query->execute();
			return $query ->fetchAll();
		}
		public function fetch_all_hotel_not_sub()
		{
			global $pdo;
			
			$query= $pdo->prepare("SELECT * FROM users  where sub_status ='deactive' ORDER BY `users`.`tilldate` ASC ;");
			$query->execute();
			return $query ->fetchAll();
		}
		public function fetch_all_hotel_not_act()
		{
			global $pdo;
			
			$query= $pdo->prepare("SELECT * FROM users where act_status ='deactive' ORDER BY `users`.`tilldate` ASC;");
			$query->execute();
			return $query ->fetchAll();
		}
		public function fetch_all_hotel_exp()
		{
			global $pdo;
			
			$query= $pdo->prepare("SELECT * FROM users ORDER BY `users`.`tilldate` ASC;");
			$query->execute();
			return $query ->fetchAll();
		}
		
		public function fetch_hids()
		{
			global $pdo;
			
			$query= $pdo->prepare("SELECT MAX(hid) as hid FROM users;");
			$query->execute();
			return $query ->fetch();
		}
		
   }
?>
