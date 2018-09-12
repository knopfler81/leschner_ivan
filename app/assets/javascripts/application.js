//= require rails-ujs
//= require jquery
//= require tawk 
//= require photoswipe
//= require_tree .

window.setTimeout(function() {
  $(".alert").fadeTo(500, 0).slideUp(500, function(){
     $(this).remove(); 
  });
}, 3000);