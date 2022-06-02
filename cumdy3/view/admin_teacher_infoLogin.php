
<body bgcolor="00808">



<br><br>
<form action="check.php" method="post">
<font color="white">User type:</font>
<select name="user" style="width:150px;">
<?php 
		$count=0;
		$con=mysqli_connect("localhost","root","","teacher_information");
$query="select DISTINCT User_Level from teacher_details";
$result=mysqli_query($con,$query);
while($row=mysqli_fetch_assoc($result))
{
	extract($row);
	echo"<option value='$User_Level'>$User_Level</option>";
}
?>
</select>
<br><br>
<table>
<tr>
	<td><font color=white>ID:</font></td>
	<td><input type="text" name="id"><br></td>
</tr>

<tr>
	<td><font color=white>Password:</font></td>
	<td><br><input type="password" name="password"><br><br></td>
</tr>

<tr>
	<td><input type="submit" value="Login"></td>
	<td><input type="reset" value="Reset"></td>
</tr>
</table>
</form>
<br>
<a href="forget.php"   target="blank">Forget your username or password?</a><br><br>
<table>
<tr>
 <td><input type="button" value="Google" onclick="window.open('http://www.google.com');"style="color:008080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
 <td><input type="button" value="Yahoo!" onclick="window.open('http://www.yahoo.com');"style="color:008080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
 <td><input type="button" value="Help!" onclick="window.open('http://www.ask.com');"style="color:008080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
 <td><input type="button" value="More Info" onclick="window.open('http://www.wikipedia.com');"style="color:008080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
</tr>
</table>


</form>



