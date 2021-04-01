<?php
require 'sql.php';

function get_Competition($id){
	$result = sql("SELECT * FROM events WHERE comp_id=".$id);
	return json_encode($result);
}


?>