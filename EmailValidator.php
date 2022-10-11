<?php
//cerner_2tothe5th_2022
 function checkemail($str) {
        return (!preg_match("/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix", $str)) ? FALSE : TRUE;
   }
$a = readline('Enter an email to validate: ');
   if(!checkemail($a)){
      echo "Invalid email address.";
   }
   else{
      echo "Valid email address.";
   }

?>
