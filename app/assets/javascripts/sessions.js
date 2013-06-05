$(document).ready(function () {
  var firepadRef = new Firebase('http://cubnotes.firebaseIO.com/' + window.location.pathname);
  var codeMirror = CodeMirror(document.getElementById('firepad'), { lineWrapping: true });
  theFirepad = Firepad.fromCodeMirror(
    firepadRef,
    codeMirror,
    {
      richTextShortcuts: true,
      richTextToolbar: true
    }
  );

  theFirepad.on('ready', function () {
    var $html = $(theFirepad.getHtml());
//    $html.find('font[size]').each(function(index, element) {var $el = $(element); $el.css('font-size', $el.attr('size')+'px')})
    $('#readOnlyFirepad').html($html);
  });

});
