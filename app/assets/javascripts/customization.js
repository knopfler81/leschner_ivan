window.setTimeout(function() {
  $(".alert").fadeTo(500, 0).slideUp(500, function(){
     $(this).remove(); 
  });
}, 3000);


function humanFileSize(bytes, si) {
    var thresh = si ? 1000 : 1024;
    if(Math.abs(bytes) < thresh) {
        return bytes + ' B';
    }
    var units = si
        ? ['kB','MB','GB','TB','PB','EB','ZB','YB']
        : ['KiB','MiB','GiB','TiB','PiB','EiB','ZiB','YiB'];
    var u = -1;
    do {
        bytes /= thresh;
        ++u;
    } while(Math.abs(bytes) >= thresh && u < units.length - 1);
    return bytes.toFixed(1)+' '+units[u];
}


$(function() {

  function readURL(input) {
    if (input.files && input.files[0]){
      var reader = new FileReader();
      reader.onload = function (e) {
        $('#main_img_prev').attr('src', e.target.result);
      } 
      reader.readAsDataURL(input.files[0]);
    }
  }

  $("#main_image_upload").change(function(){ 
    if(this.files[0].size <= 500000){
      $('#main_img_prev').removeClass('hidden').removeClass('image_error').addClass('tiny_image').parents('.error').removeClass('error')
      var img = document.getElementById("main_img_error");
      img.innerHTML =  humanFileSize(this.files[0].size, true) + " is cool!"
      img.style.color = "green"
      readURL(this);
    }
    else {
      $('#main_img_prev').removeClass('hidden').addClass('image_error');
      readURL(this);
      var img = document.getElementById("main_img_error");
      img.innerHTML +=  humanFileSize(this.files[0].size, true) + " is too heavy!!!!!"
    }
  }); 

});

$(function() {

  function readURL(input) {
    if (input.files && input.files[0]){
      var reader = new FileReader();
      reader.onload = function (e) {
        $('#first_section_img_prev').attr('src', e.target.result);
      } 
      reader.readAsDataURL(input.files[0]);
    }
  }

  $("#first_section_image_upload").change(function(){ 
    if(this.files[0].size <= 500000){
      $('#first_section_img_prev').removeClass('hidden').removeClass('image_error').addClass('tiny_image').parents('.error').removeClass('error')
      var img = document.getElementById("first_section_img_error");
      img.innerHTML =  humanFileSize(this.files[0].size, true) + " is cool!"
      img.style.color = "green"
      readURL(this);
    }
    else {
      $('#first_section_img_prev').removeClass('hidden').addClass('image_error');
      readURL(this);
      var img = document.getElementById("first_section_img_error");
      img.innerHTML =  humanFileSize(this.files[0].size, true) + " is too heavy!!!!!"
    }
  });  
  
});

$(function() {

  function readURL(input) {
    if (input.files && input.files[0]){
      var reader = new FileReader();
      reader.onload = function (e) {
        $('#second_section_img_prev').attr('src', e.target.result);
      } 
      reader.readAsDataURL(input.files[0]);

    }
  }

  $("#second_section_image_upload").change(function(){ 
    if(this.files[0].size <= 500000){
      $('#second_section_img_prev').removeClass('hidden').removeClass('image_error').addClass('tiny_image').parents('.error').removeClass('error')
      var img = document.getElementById("second_section_img_error");
      img.innerHTML =  humanFileSize(this.files[0].size, true) + " is cool!"
      img.style.color = "green"
      readURL(this);
    }
    else {
      $('#second_section_img_prev').removeClass('hidden').addClass('image_error');
      var img = document.getElementById("second_section_img_error");
      img.innerHTML =  humanFileSize(this.files[0].size, true) + " is too heavy!!!!!"

      readURL(this);
    }
  });

});

$(function() {
  function readURL(input) {
    if (input.files && input.files[0]){
      var reader = new FileReader();
      reader.onload = function (e) {
        $('#third_section_img_prev').attr('src', e.target.result);
      } 
      reader.readAsDataURL(input.files[0]);
    }
  }

  $("#third_section_image_upload").change(function(){ 
    if(this.files[0].size <= 500000){
      $('#third_section_img_prev').removeClass('hidden').removeClass('image_error').addClass('tiny_image').parents('.error').removeClass('error')
      var img = document.getElementById("third_section_img_error");
      img.innerHTML =  humanFileSize(this.files[0].size, true) + " is cool!"
      img.style.color = "green"
      readURL(this);
    }
    else {
      $('#third_section_img_prev').removeClass('hidden').addClass('image_error');
      readURL(this);
      var img = document.getElementById("third_section_img_error");
      img.innerHTML =  humanFileSize(this.files[0].size, true) + " is too heavy!!!!!"
    }
  });  
  
});

$(function() {

  function readURL(input) {
    if (input.files && input.files[0]){
      var reader = new FileReader();
      reader.onload = function (e) {
        $('#avatar_prev').attr('src', e.target.result);
      } 
      reader.readAsDataURL(input.files[0]);
    }
  }

  $("#avatar_upload").change(function(){ 
    if(this.files[0].size <= 500000){

      $('#avatar_prev').removeClass('hidden').removeClass('image_error').addClass('tiny_image').parents('.error').removeClass('error')
      var img = document.getElementById("avatar_error");
      img.innerHTML =  humanFileSize(this.files[0].size, true) + " is cool!"
      img.style.color = "green"
      readURL(this);
    }
    else {
      $('#avatar_prev').removeClass('hidden').addClass('image_error')
      var img = document.getElementById("avatar_error");
      img.innerHTML =  humanFileSize(this.files[0].size, true) + " is too heavy!!!!!"
    }
  });  

});
