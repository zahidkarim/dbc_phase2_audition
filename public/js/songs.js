$(document).ready(function() {

  // when a playlist is clicked the songs appear underneath

$("a.edit_link").click(function(event){
  event.preventDefault();
  $target = $(event.target);
  $target.hide();
  $(".edit_form").show();

})

});