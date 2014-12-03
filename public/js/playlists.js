$(document).ready(function() {

  // when a playlist is clicked the songs appear underneath

$( ".playlist").hover(
  function(event) {
    $target = $(event.target);
    $target.children().show()
  })

$( ".playlist" ).mouseleave(
  function() {
    $(".song").hide()
  })

});
