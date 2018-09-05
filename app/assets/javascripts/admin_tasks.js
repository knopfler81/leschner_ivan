var openAdmin  =  document.getElementById('open-admin');

if(openAdmin != null){

	openAdmin.addEventListener('click', openAdminTasks);

	var adminTasks = document.getElementById('admin_tasks');
	var guitarGallery = document.getElementById('guitars_gallery');
	var guitarGalleryAdmin = document.getElementById('guitars_gallery_admin');
	var trashes = Array.from(document.getElementsByClassName('trash'));


	function openAdminTasks(){

		setTimeout(function(){
			guitarGallery.style.marginTop = "0px";
			guitarGallery.style.transition = "all 250ms ease-in";
			adminTasks.style.visibility = "visible";
			adminTasks.style.transition = "all 500ms ease-in";
			adminTasks.style.transform = "scale(1)";
		}, 500)

		trashes.forEach(function(trash){
			setTimeout(function(){
				trash.style.visibility = "visible";
				trash.style.transition = "all 500ms ease-in";
				trash.style.transform = "scale(1)";
			}, 500)

		})


		var closeAdmin = document.getElementById('close-admin');

		setTimeout(function(){
			closeAdmin.style.visibility = "visible"
			closeAdmin.style.transition = "all 500ms ease-in";
			closeAdmin.style.transform = "scale(1)";
			openAdmin.style.transform = "scale(0.5)";
			openAdmin.style.visibility = "hidden";
			adminTasks.style.margin = "30px";
		}, 500)

	};

	var closeAdmin  =  document.getElementById('close-admin');

	closeAdmin.addEventListener('click', closeAdminTasks);

	function closeAdminTasks(){
		setTimeout(function(){
				guitarGallery.style.marginTop = "-100px";
				guitarGallery.style.transition = "all 250ms ease-in";
				adminTasks.style.transition = "all 250ms ease-in";
				adminTasks.style.transform = "scale(0.5)";
				adminTasks.style.visibility = "hidden";
				adminTasks.style.margin = "0px";

				closeAdmin.style.visibility = "hidden";
				closeAdmin.style.transform = "scale(0.5)";
				closeAdmin.style.transition = "all 350ms ease-in";

				openAdmin.style.visibility  = "visible";
				openAdmin.style.transform = "scale(1)";
				openAdmin.style.transition = "all 250ms ease-in";


			}, 100)

		trashes.forEach(function(trash){
			setTimeout(function(){
				trash.style.visibility = "hidden";
				trash.style.transition = "all 500ms ease-in";
				trash.style.transform = "scale(0)";
			}, 500)
		})

	};


};
