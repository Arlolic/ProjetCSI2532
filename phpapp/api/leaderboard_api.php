<?php
require 'sql.php';

function get_leaderboard(){
	$result = sql("SELECT * FROM ordered_boards");
	return ($result);
}


?>