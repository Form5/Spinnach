/*
  Spinnach v1.0
  Written by Form5
  www.form5.is
  @Form5
  hello@form5.is
  License: MIT
*/


(function() {
  this.Spinnach = {
    load: function(img) {
      var i, parent, _results;
      parent = img.parentNode;
      i = 0;
      _results = [];
      while (parent) {
        if (parent.className.indexOf('img-wrapper') > -1) {
          if (parent.className.indexOf('loaded') === -1) {
            parent.className += ' loaded';
            break;
          }
        }
        if (i > 3) {
          break;
        }
        i++;
        _results.push(parent = parent.parentNode);
      }
      return _results;
    }
  };

}).call(this);
