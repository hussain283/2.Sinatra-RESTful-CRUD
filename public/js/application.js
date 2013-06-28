$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  $('.delete').on('click',function(event){
  	event.preventDefault();
  	var noteId = $(this).attr('data-id')
  	$.ajax({
  	  url: "/note/delete",
  	  type: "delete",
  	  data: {id: noteId}
  	})
  	.done(function(redirect){
  	  	$('#note_id_' + noteId).fadeOut().queue(function(){
  	  		$(this).remove();
  	  	});
  	});
  });
});
