Spinnach
========

Spinnach is a way of loading images nicely by fading them in after showing
a loading spinner. Written in only 1.5KB of Javascript and CSS with no
dependencies on jQuery or other libraries.

[Demo](http://form5.github.io/Spinnach/)

## Instructions
Simply load the Spinnach files in the head of your document, preferrably 
right after you load your site's CSS files:

```html
<head>
  ...
  <link rel="stylesheet" href="path/to/spinnach.min.css">
  <script src="path/to/spinnach.min.js"></script>
</head>
```

Wrap your image as follows, add the onload attribute and you're good to go.
The default approach assumes you have fixed height and width set on your
image wrapper.

```html
<div class="img-wrapper">
  <div class="loading"></div>
  <img src="..." onload="Spinnach.load(this)" />
</div>
```

## Advanced functionality

Feel free to configure Spinnach to your needs. You can configure the size,
color and animation timings of your spinner to match your site's color pallette.
These configurable variables can be found in `src/spinnach.scss`.

```scss
$size: 40px;
$border-width: 4px;
$border-color: transparent;
$spinner-border-color: #41485E;
$spinner-time: 0.75s;
$img-fade-time: 0.25s;
```

After customizing Spinnach, you can build it again by running:

```shell
$ npm install
$ grunt build
```

## Author
Written by [Olafur Nielsen](http://twitter.com/olafurnielsen), co-founder at
[Form5](http://www.form5.is). Inspired by
[Barrel](http://www.barrelny.com/blog/taking-control-of-imageloading/).
