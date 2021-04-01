<?php
function sql($sql, $dbconn = null)
{
  $dbconn = pg_connect("host=localhost port=5432 dbname=competitions user=postgres password=postgres");
  $result = pg_query($dbconn, $sql);
  return pg_fetch_all($result);
}
$athletes = sql("SELECT * FROM athletes");
$competitions = sql("SELECT * FROM competitions");

echo "<pre>";
print_r($athletes);
echo "</pre>";

echo "<pre>";
print_r($competitions);
echo "</pre>";