<?php
function sql($sql, $dbconn = null)
{
  $dbconn = pg_connect("host=localhost port=5432 dbname=Livrable3 user=postgres password=1");
  $result = pg_query($dbconn, $sql);
  return pg_fetch_all($result);
}
?>