<?php 

//database server 
define('db_server', 'localhost'); 

//user, password, and database variables 
$db_user = 'Nate'; 
$db_password = '@l1I2N3K4S5';     
$db_dbname = 'User'; 

/** 
* Run MySQL query and output  
* results in a HTML Table 
*/ 
function outputQueryResults() { 
   
  //run a select query 
  $select_query = 'SELECT * FROM create_user'; 
  $result = mysql_query($select_query); 
   
  //output data in a table 
  echo "<table>\n"; 
  while ($row = mysql_fetch_row($result)){     
      echo "<tr>\n"; 
      foreach ($row as $val) { 
          echo "<td>$val</td>\n"; 
      } 
      echo "</tr>\n"; 
  } 
  echo '</table>'; 
} 

//connect to the database server 
$db = mysql_connect(db_server, $db_user, $db_password); 
if (!$db) { 
   die('Could Not Connect: ' . mysql_error()); 
} else { 
  echo "Connected Successfully...\n"; 
} 
//select database name 
mysql_select_db($db_dbname); 

//run query and output results 
outputQueryResults(); 

//close database connection 
mysql_close($db) 
?> 