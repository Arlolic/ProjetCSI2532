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
<h2>MeFit's corporate contact</h2>

Sponsored by MeFit

<table class="dashboard_table">
	<tr>
	<th><a href='index.php'>return</a></th>
    </tr>
</table>

<?php
require 'sql.php';

$athletes = sql("SELECT * FROM contacts WHERE id=".$_GET['id']);

echo '<table class="contact_table">
        <tr>
		 <th>Gender</th>
         <th>Name</th>
         <th>Email</th>
         <th>Phone Number</th>
        </tr>';

foreach($athletes as $array)
{
    echo '<tr>
            <td>'. $array['gender'].'</td>
            <td>'. $array['name'].'</td>
            <td>'. $array['email'].'</td>
            <td>'. $array['phone_number'].'</td>
          </tr>';
}
echo '</table>';

?>

</body></html>