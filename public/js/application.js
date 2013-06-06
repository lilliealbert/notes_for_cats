$(document).ready(function() {
  $("#delete a").click( function (e) {
    e.preventDefault();
    if (confirm('Really delete note?')) {      
      $.ajax({
        url: $(this).attr('href'),
        type: "delete"
      }).done( function () {
        window.location = '/';
      });
    }
  });
});