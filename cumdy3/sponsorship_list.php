<!DOCTYPE html>
<html>
	<body>
		<h1> Sponsorship Applicants' list</h1>
		<?php
  			include ("user/config.php");
 			$result=mysqli_query($conn, "SELECT * FROM sponsorship");
		?>
		<ul>
  		<?php while($row=mysqli_fetch_assoc($result)); ?>
    	<li> 
      		<?php echo $row['rollno'] ?> 
      		<?php echo $row['name'] ?> 
      		<?php echo $row['income'] ?> 
      		<?php echo $row['sibling'] ?> 
      		<?php echo $row['recommended'] ?> 

    	</li>
  		<?php endwhile; ?>
		</ul>
	</body>
</html>