// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready(function(){
	$('form').submit(function() {  
	if ($('#success_message').length > 0) {
		$('#success_message').remove();
	}
    var valuesToSubmit = $(this).serialize();
    $.ajax({
        url: $(this).attr('action'), //submits it to the given url of the form
        type: 'POST',
        data: valuesToSubmit,
        dataType: "JSON"
    }).success(function(json){
        //$('#success_message').show();
		var success_message_html = '<div class="alert alert-success" id="success_message">';
		success_message_html += 'Success! You will be in touch.';
		success_message_html += '</div>';
		
		$(this).before(success_message_html);	
		
    });
    return false; 
	});
});

