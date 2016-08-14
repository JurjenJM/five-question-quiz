$(document).ready(function() {

$('.question-1').hide(); // Initially question 1 wil be hidden.
$('.question-2').hide(); // Initially question 2 wil be hidden.
$('.question-3').hide(); // Initially question 3 wil be hidden.
$('.question-4').hide(); // Initially question 4 wil be hidden.
$('.question-5').hide(); // Initially question 5 wil be hidden.
$('.submit').hide(); // Initially submit button wil be hidden.

 $('.start-quiz').click(function() {
  $('.welcome').hide();
  $('.question-1').show().delay(4500).fadeOut(); // Question 1 shows on button click
  $(setTimeout(function(){ $('.question-2').show().delay(4500).fadeOut(); }, 5000));
  $(setTimeout(function(){ $('.question-3').show().delay(4500).fadeOut(); }, 10000));
  $(setTimeout(function(){ $('.question-4').show().delay(4500).fadeOut(); }, 15000));
  $(setTimeout(function(){ $('.question-5').show().delay(4500).fadeOut(); }, 20000));
  $(setTimeout(function(){ $('.submit').show(); }, 25000));

  });

});
