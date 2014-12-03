$(document).ready(function() {


// edit fields hsow up when you click the edit button
$("a.edit_link").click(function(event){
  event.preventDefault();
  $target = $(event.target);
  $target.hide();
  $(".edit_form").show();

})


// AJAX edit to refresh song
$(".edit_form").on("submit", function(event){
  event.preventDefault();
  $target = $(event.target);
  $.ajax({
     url: $target.attr("action"),
     type: "PUT",
     data: $target.serialize()
  }).done(function(response){
    $("html").html(response)
  })
})

  $('.song').draggable();
  $('.playlist').droppable({
      drop: function( event, ui ) {
        alert('Dropped')
    }
  })

});