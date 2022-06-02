<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<body>
	<?php
	 $id=$_GET['id'];
	  $r=$db->query("select * from thesis where Student_ID=$id") ;
	  foreach ($r as $key => $value) {
        $pdf=$value['PaperPDF'];
	  }
	  $file=$pdf;
	  $filename=$pdf;
	  header('Content-type: application/pdf');
	  header('Content-Disposition: inline; filename="' . $filename . '"');
	  header('Content-Transfer-Encoding: binary');
	  header('Accept-Ranges: bytes');
	  @readfile($file);
	?>
	</body>
</html>