function handleFileSelect() {
  //Check File API support
  if (window.File && window.FileList && window.FileReader) {

      var files = event.target.files; //FileList object
      var output = document.getElementById("result");

      for (var i = 0; i < files.length; i++) {
          var file = files[i];
          //Only pics
          if (!file.type.match('image')) continue;

          var picReader = new FileReader();
          picReader.addEventListener("load", function (event) {
            var picFile = event.target;
            var li = document.createElement("li");
            li.className ='list'

            li.innerHTML = "<img class='thumbnail small_image' src='" + picFile.result + "'" + "title='" + picFile.name + "'/>";

            output.insertBefore(li, null);

          });
          //Read the image
          picReader.readAsDataURL(file);
      }
  } else {
      console.log("Your browser does not support File API");
  }
}

var element = document.getElementById('files')

if(element != null){
  document.getElementById('files').addEventListener('change', handleFileSelect, false);  
}
