<?php

class DbConnector {

var $theQuery;
var $link;

function DbConnector(){

        // Get the main settings from the array we just loaded
        $host = 'localhost';
        $db = 'e_learning';
        $user = 'root';
        $pass = '';

        // Connect to the database
        $this->link = mysqli_connect($host, $user, $pass, $db);
        mysqli_select_db($db);
		mysqli_query($con,"sET NAMES 'utf8'");
        register_shutdown_function(array(&$this, 'close'));

    }
	
  //*** Function: query, Purpose: Execute a database query ***
    function query($query) {

        $this->theQuery = $query;
        return mysqli_query($con,$query, $this->link);
		mysqli_query($con,"sET NAMES 'utf8'");

    }

    //*** Function: fetchArray, Purpose: Get array of query results ***
    function fetchArray($result) {

        return mysqli_fetch_array($result);
		mysqli_query($con,"sET NAMES 'utf8'");

    }

    //*** Function: close, Purpose: Close the connection ***
    function close() {

        mysqli_close($this->link);

    }
	
}

?>