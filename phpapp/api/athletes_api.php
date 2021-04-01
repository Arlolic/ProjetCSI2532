<?php
require 'sql.php';

function get_Athletes(){
	$athletes = sql("SELECT * FROM athletes");
	return json_encode($athletes);
}


?>