<?php
require 'sql.php';

function get_Competition(){
	$result = sql("SELECT * FROM partners INNER JOIN contacts ON contacts.id=partners.contact_id");
	return json_encode($result);
}


?>