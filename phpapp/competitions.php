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

<?php
require 'api/competitions_api.php';

$competitions = json_decode(get_Competitions());
?>

<table class="dashboard_table">
	<tr>
	<th><a href='index.php'>return</a></th>
    </tr>
</table>





<?php
echo '<table class="my_table">
        <tr>
         <th>Name</th>
         <th>Venue</th>
         <th>Start Date</th>
         <th>End Date</th>
         <th>Year</th>
        </tr>';

foreach($competitions as $item)
{
    echo '<tr>
            <td><a href="competition.php?id='.$item->id.'"> '.$item->comp_name.'</a></td>
            <td>'. $item->venue.'</td>
            <td>'. $item->start_date_time.'</td>
            <td>'. $item->end_date_time.'</td>
            <td>'. $item->comp_year.'</td>
          </tr>';
}


?>


</body></html>