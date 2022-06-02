  $(document).ready(function(){
    $('[data-nav="tooltip"]').tooltip();
    });

$("form#login input").on('focus',function(){
  $("div#loginMsg").text('');
});

$("ul.dropdown-menu>li").on('click',function(){
	$("div#myNavbar").attr('class','navbar-collapse collapse');
});


// Ramu you are woring from Here

// var loc = document.getElementsByTagName('link')[5];


