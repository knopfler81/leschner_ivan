//= require rails-ujs
//= require jquery3
//= require bootstrap
//= require photoswipe
//= require_tree .

window.setTimeout(function() {
  $(".alert").fadeTo(500, 0).slideUp(500, function(){
     $(this).remove(); 
  });
}, 3000);

$(document).ready(function(){ 
	$('.navbar .navbar-nav > li.dropdown').hover(function(){
	 $('.dropdown-menu', this).stop(true, true).slideDown(); 
	 $(this).addClass('show');
	 }, 
	function(){ 
		$('.dropdown-menu', this).stop(true, true).slideUp(); 
		$(this).removeClass('show');
	});
});

