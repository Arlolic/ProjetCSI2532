<?php
require 'sql.php';

function get_event($id){
	$result = sql("SELECT * FROM results INNER JOIN athletes ON results.athlete_id = athletes.ID WHERE event_id=".$id ." ORDER BY main_score ASC, time_capped_score DESC, tie_breaker_score ASC");
	return json_encode($result);
}


?>