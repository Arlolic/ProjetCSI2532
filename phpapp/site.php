<?php
function sql($sql, $dbconn = null)
{
  $dbconn = pg_connect("host=localhost port=5432 dbname=postgres user=postgres password=postgres");
  $result = pg_query($dbconn, $sql);
  return pg_fetch_all($result);
}
$athletes = sql("SELECT * FROM athletes");
echo "<pre>";
print_r($athletes);
echo "</pre>";

