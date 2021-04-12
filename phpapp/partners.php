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

<table class="my_table">
	<tr>
	<th><a href='index.php'>return</a></th>
    </tr>
</table>

<?php
require 'partners_api.php';

$partners = json_decode(get_Competition());

echo '<table class="my_table">
        <tr>
         <th>ID</th>
         <th>Enterprise</th>
         <th>Address</th>
         <th>Contact</th>
        </tr>';

foreach($partners as $item)
{
    echo '<tr>
            <td class="highlight">'. $item->id.'</td>
            <td>'. $item->enterprise_name.'</td>
            <td>'. $item->address.'</td>
            <td><a href="contact.php?id='.$item->contact_id.'">'. $item->name.'</td>
          </tr>';
}
echo '</table>';

?>

</body></html>



