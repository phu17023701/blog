<?php

/* Connection to database */
	$conn =mysqli_connect("database-1.cwmiicqcnheb.ap-southeast-1.rds.amazonaws.com","admin","minhphu999","blog");

	/* Check connection */
	if(mysqli_connect_error()) {
		echo "Connection failed";
		printf("Error : %s",mysqli_connect_error());
	}

?>
