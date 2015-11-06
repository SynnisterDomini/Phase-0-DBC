// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'});

//RELEASE 2:
bodyElement = $("body");


//RELEASE 3:
$('#change').css({'color': 'red', 'border': '2px solid black', 'visibility' : 'hidden' });
$('.cohort').html("Copperheads")

//RELEASE 4: Event Listener
$('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'https://upload.wikimedia.org/wikipedia/commons/9/96/Agkistrodon_contortrix_contortrix_CDC-a.png')
  })

$('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })

//RELEASE 5: Experiment on your own

$('img').animate({
	'height': '20px',
 	'width': '110px'})




})  // end of the document.ready function: do not remove or write DOM manipulation below this.