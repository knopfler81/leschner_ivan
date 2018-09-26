window.setTimeout(function() {
  $(".alert").fadeTo(500, 0).slideUp(500, function(){
     $(this).remove(); 
  });
}, 3000);

$(function() {
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {
        $('#main_img_prev').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }

  $("#main_image_upload").change(function(){
    $('#main_img_prev').removeClass('hidden').addClass('tiny_image');
    readURL(this);
  });

});

$(function() {
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {

        $('#first_section_img_prev').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }

  $("#first_section_image_upload").change(function(){
    $('#first_section_img_prev').removeClass('hidden').addClass('tiny_image');

    readURL(this);
  });
});


$(function() {
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {

        $('#second_section_img_prev').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }

  $("#second_section_image_upload").change(function(){
    $('#second_section_img_prev').removeClass('hidden').addClass('tiny_image');

    readURL(this);
  });
});


$(function() {
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {
        $('#third_section_img_prev').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }

  $("#third_section_image_upload").change(function(){
    $('#third_section_img_prev').removeClass('hidden').addClass('tiny_image');

    readURL(this);
  });
});

$(function() {
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {
        $('#avatar_prev').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }

  $("#avatar_upload").change(function(){
    $('#avatar_prev').removeClass('hidden').addClass('tiny_image');
    readURL(this);
  });
});