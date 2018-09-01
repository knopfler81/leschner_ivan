$(function() {
	Dropzone.autoDiscover = false;

	$("#my-dropzone").dropzone({
			maxFilesize: 19,
			addRemoveLinks: true,
			paramName: "finished_guitars[attachments_attributes][][image]",
		});
});