$(document).ready(function () {
var firepadRef = new Firebase('http://cubnotes.firebaseIO.com/');
var codeMirror = CodeMirror(document.getElementById('firepad'), { lineWrapping: true });
var firepad = Firepad.fromCodeMirror(firepadRef, codeMirror,
  { richTextShortcuts: true, richTextToolbar: true });
})
