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
    var $html = $(firepad.getHtml());
//    $html.find('font[size]').each(function(index, element) {var $el = $(element); $el.css('font-size', $el.attr('size')+'px')})
    $('#readOnlyFirepad').html($html);
  });


  $('#edit_button').click(function() {
    $('#firepad').css('display', 'block');
    $('#readOnlyFirepad').css('display', 'none');
    $('#edit_button').css('display', 'none');
  });
});
