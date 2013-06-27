// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready(function(){
	$('form').submit(function() {  
    var valuesToSubmit = $(this).serialize();
    $.ajax({
        url: $(this).attr('action'), //submits it to the given url of the form
        type: 'POST',
        data: valuesToSubmit,
        dataType: "JSON"
    }).success(function(json){
        alert("Success! We'll be in touch.");
    });
    return false; 
	});
});
