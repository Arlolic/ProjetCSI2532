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
require 'sql.php';

$partners = sql("SELECT * FROM partners INNER JOIN contacts ON contacts.id=partners.contact_id");

echo '<table class="partners_table">
        <tr>
         <th>ID</th>
         <th>Enterprise</th>
         <th>Address</th>
         <th>Contact</th>
        </tr>';

foreach($partners as $array)
{
    echo '<tr>
            <td class="highlight">'. $array['id'].'</td>
            <td>'. $array['enterprise_name'].'</td>
            <td>'. $array['address'].'</td>
            <td><a href="contact.php?id='.$array['contact_id'].'">'. $array['name'].'</td>
          </tr>';
}
echo '</table>';

?>

</body></html>



