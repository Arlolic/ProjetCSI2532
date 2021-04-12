<html>
<head>
  <meta http-equiv="cache-control" content="no-cache, must-revalidate, post-check=0, pre-check=0" />
  <meta http-equiv="cache-control" content="max-age=0" />
  <meta http-equiv="expires" content="0" />
  <meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
  <meta http-equiv="pragma" content="no-cache" />

<link rel="stylesheet" type="text/css" href="site.css">
</head>
<body>
<h2>MeFit sponsored competitions</h2>

Sponsored by MeFit

<table class="dashboard_table">
	<tr>
	<th><a href='index.php'>return</a></th>
    </tr>
</table>

<?php
require 'api/leaderboard_api.php';

$boards = get_leaderboard();

echo '<table class="my_table">
        <tr>
		 <th>Position</th>
         <th>Athlete</th>
         <th>Event</th>
         <th>Main Score</th>
         <th>Time Capped</th>
         <th>Tie Breaker</th>
        </tr>';

$currentcomp = null;
$currentevent = null;
$pos = 1;
$numberevents = 0;
$rankings = array();

foreach($boards as $array)

{
	if ($currentcomp === NULL){
		$currentcomp = $array['comp_name'];
		echo '<tr><td colspan="6"><h3>'.$currentcomp.'</h3></td></tr>';
	}
	
	
	if ($currentcomp !== $array['comp_name']){
		echo '</table>';
		displayrankings($rankings, $numberevents);
		
		echo '<table class="lead_table_curr">
        <tr>
		 <th>Position</th>
         <th>Athlete</th>
         <th>Event</th>
         <th>Main Score</th>
         <th>Time Capped</th>
         <th>Tie Breaker</th>
        </tr>';
		$currentcomp = $array['comp_name'];
		echo '<tr><td colspan="6"><h3>'.$currentcomp.'</h3></td></tr>';
		$currentevent = null;
		$pos = 1;
		$numberevents = 0;
		$ranking = array();
	}

	if ($currentevent === NULL){
		$currentevent = $array['event_name'];
		$numberevents = $numberevents+1;
	}
	
	
	if ($currentevent !== $array['event_name']){
		$pos = 1;
		$currentevent = $array['event_name'];
		$numberevents = $numberevents+1;
	}
    echo '<tr>
	        <td>'. $pos.'</td>
            <td>'. $array['name'].'</td>
            <td>'. $array['event_name'].'</td>
            <td>'. $array['main_score'].'</td>
            <td>'. $array['time_capped_score'].'</td>
            <td>'. $array['tie_breaker_score'].'</td>
          </tr>';
	if ($rankings[$array['name']] === null){
	$rankings[$array['name']] = array();
	}
	$rankings[$array['name']][] = $pos;
	$pos = $pos+1;
}
echo '</table>';
displayrankings($rankings, $numberevents);



function displayrankings ($rankings, $numberevents){
	$worstrank = count($rankings);
	$averages = array();
	
	foreach ($rankings as $athlete => $scores) {
		$numberscores = count($scores);
		for($i = 0; i < $numberevents-$numberscores; $i++){
			$scores[] = $worstrank;
		}
		$averages[$athlete] = array_sum($scores)/$numberevents;
	}
	echo '<h3>rankings:</h3>';
	echo '<table> <tr> <th> athlete </th> <th> place </th> </tr>';
	$n = 0;
	while(!empty($averages)){
	$max = 0; 
	foreach ($averages as $athlete => $average){
		if($average>$max){
			$aa = $athlete;
			$max = $average;
		}
	}
	unset($averages[$aa]);
	$n+=1;
	echo '<tr> <td>'. $aa .'</td> <td>'. $n .'</td></tr>';}
	echo '</table>';
}


?>


</body></html>