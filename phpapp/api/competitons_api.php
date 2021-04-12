<?php
require 'sql.php';

function get_Competitions(){
	$result = sql("SELECT * FROM competitions");
	return json_encode($result);
}


?>