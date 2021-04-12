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
<h2>MeFit sponsored event results</h2>

Sponsored by MeFit

<table class="my_table">
	<tr>
	<th><a href='index.php'>return</a></th>
    </tr>
</table>

<?php
require 'api/event_api.php';

$event_results = json_decode(get_event($_GET['id']));

if (empty($event_results)){
echo 'no results for this event';
}

else{

echo '<table class="my_table">
        <tr>
         <th>Athlete</th>
         <th>Main Score</th>
         <th>Time Capped</th>
         <th>Tie Breaker Score</th>
        </tr>';

foreach($event_results as $item)
{
    echo '<tr>
            <td>'. $item->name.'</td>
            <td>'. $item->main_score .'</td>
            <td>'. $item->time_capped_score.'</td>
            <td>'. $item->tie_breaker_score.'</td>
          </tr>';
}
}

?>


</body></html>