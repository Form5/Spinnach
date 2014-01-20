/*
  Spinnach v1.1
  Written by Form5
  www.form5.is
  @Form5
  hello@form5.is
  License: MIT
*/

var Spinnach;

Spinnach = {
  load: function(img) {
    var i, parent, _results;
    parent = img.parentNode;
    i = 0;
    while (parent) {
      if (parent.className.indexOf('img-wrapper') > -1) {
        if (parent.className.indexOf('loaded') === -1) {
          parent.className += ' loaded';
          break;
        }
      }
      if (i > 3) break;
      i++;
    }
  },
  preload: function(images) {
    var preloaded = [];
    for (i = 0, length = images.length; i < length; ++i) {
      preloaded[i] = new Image();
      preloaded[i].src = images[i];
    }
  }
};
