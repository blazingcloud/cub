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

  theFirepad.on('ready', function() {
//    alert(theFirepad.getHtml());
//    $(theFirepad.getHtml()).appendTo($('readOnlyFirepad'));
      $('#readOnlyFirepad').html(theFirepad.getHtml());
    });

});
