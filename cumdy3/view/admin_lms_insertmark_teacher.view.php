<?php
  require 'view/header.view.php';                                        
?>


    
<div class="container-fluid" >		
  <div class="row">
 <form action="#" method="post" id="markInsert" 
 name="lms_insert_mark">
 <input type="hidden" name="SubCode" value="<?=$_GET['subName']?>">

  	<div class="col-sm-offset-1 col-sm-10" id="body">
  		<h3>Learning Management > Insert Mark</h3>

  		<div class="col-sm-4">
  			<select class='form-control btn-primary' id='term' name='term_id'>
             	<option value=''>--select term --</option>
	        	<option value='1'>First Term</option>
	        	<option value='2'>Second Term</option>
	        </select>
        </div>
        <div class="col-sm-4">
	  		<select class='form-control btn-primary'  id='exam' name='exam_type_id'>
	  			 <option value=''>--select exam type --</option>
	        	<option value='1'>Tutorial</option>
	        	<option value='2'>Lab</option>
	        	<option value='4'>Project</option>
	        </select>
        </div>
  		<div class="col-sm-4">
	       <select class='form-control btn-primary' id='year' name='year_id'>
	       	<option value=''>--select year  --</option>
	        <option value='01'>2012-2013</option>
	        <option value='02'>2013-2014</option>
	        <option value='03'>2014-2015</option>
	        <option value='04'>2015-2016</option>
	        <option value='05'>2016-2017</option>
	       </select>
        </div>

        <div class="row" style="padding-top:100px;display:block;">
        	<?=$table_output?>
        </div>
            <?=$save?>
  	</div>
  	   </form>
  </div>
</div>    
  
<script type="text/javascript" src="js/lms_insert_mark.js"></script>

<?php
 require 'footer.view.php'; 
?>