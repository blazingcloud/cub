$(document).ready(function () {
  var firepadRef = new Firebase('http://cubnotes.firebaseIO.com/' + window.location.pathname);
  var codeMirror = CodeMirror(document.getElementById('firepad'), { lineWrapping: true });
  var firepad = Firepad.fromCodeMirror(
    firepadRef,
    codeMirror,
    {
      richTextShortcuts: true,
      richTextToolbar: true
    }
  );

  firepad.on('ready', function () {
//    var $html = $(firepad.getHtml());
//    $html.find('font[size]').each(function(index, element) {var $el = $(element); $el.css('font-size', $el.attr('size')+'px')})
    $('#readOnlyFirepad').html(firepad.getHtml());
    $('#firepad').css('display', 'none');
  });


  $('#edit_button').click(function () {
    $('#firepad').css('display', 'block');
    $('#firepad').css('opacity', '1');
    $('#readOnlyFirepad').css('display', 'none');
//    $('#edit_button').text('Save');
    $('#edit_button').css('display', 'none');
    // TODO: restore edit button back to the original state
    $('#edit_button').click(function () {
        $('#firepad').css('display', 'none');
        $('#firepad').css('opacity', '0');
        $('#readOnlyFirepad').css('display', 'inherit');
        $('#edit_button').text('Edit');
      });
  });
});
