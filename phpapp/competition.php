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
<h2>MeFit sponsored competition events</h2>

Sponsored by MeFit

<table class="dashboard_table">
	<tr>
	<th><a href='index.php'>return</a></th>
    </tr>
</table>

<?php
require 'sql.php';

$competition = sql("SELECT * FROM events WHERE comp_id=".$_GET['id']);

if (empty($competition)){
echo 'no event for this competition';
}

else{

echo '<table class="comp_table">
        <tr>
         <th>ID</th>
         <th>Event</th>
         <th>Score Type</th>
         <th>Tie Breaker Type</th>
        </tr>';

foreach($competition as $array)
{
    echo '<tr>
            <td>'. $array['id'].'</td>
            <td> <a href="event.php?id='.$array['id'].'"> '.$array['event_name'] .' ('.$array['gender'].')</a></td>
            <td>'. $array['main_score_type'].'</td>
            <td>'. $array['tie_breaker_type'].'</td>
          </tr>';
}
}

?>


</body></html>