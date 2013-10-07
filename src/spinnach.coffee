###
  Spinnach v1.0
  Written by Form5
  www.form5.is
  @Form5
  hello@form5.is
  License: MIT
###

@Spinnach =
  load: (img) ->
    parent = img.parentNode
    i = 0;
    while parent
      if parent.className.indexOf('img-wrapper') > -1
        if parent.className.indexOf('loaded') == -1
          parent.className += ' loaded'
          break
      break if i > 3
      i++
      parent = parent.parentNode