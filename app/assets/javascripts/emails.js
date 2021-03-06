// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready(function(){
	$('#new_email').submit(function() {
		$form = $(this);
		if ($('#success_message').length > 0) {
			$('#success_message').remove();
		}
  var valuesToSubmit = $(this).serialize();
   $.ajax({
     url: $(this).attr('action'), //submits it to the given url of the form
     type: 'POST',
     data: valuesToSubmit,
     dataType: "JSON"
   }).success(function(json) {
   	$('#email_form').hide();
   	$('.btn-success').hide();
     $('#success_message').show();
			var success_message_html = '<div class="alert alert-success" id="success_message">';
			success_message_html += "Success! We'll be in touch.";
			success_message_html += '</div>';
			$form.before(success_message_html);
   });
   return false; 
	});
});