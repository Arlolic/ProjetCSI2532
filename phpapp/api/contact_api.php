<?php
require 'sql.php';

function get_contact($id){
	$result = sql("SELECT * FROM contacts WHERE id=". $id);
	return json_encode($result);
}


?>