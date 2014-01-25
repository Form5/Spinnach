Spinnach
========

Spinnach is a way of loading images nicely by fading them in after showing
a loading spinner. Written in only *1.5KB* of Javascript and CSS with no
dependencies on jQuery or other libraries.

[Demo](http://form5.github.io/Spinnach/)

## Download

### How to fetch Spinnach?

Install with [Bower](http://bower.io): `bower install spinnach`

Clone the Github project: `git clone https://github.com/Form5/Spinnach.git`

Or [download zip](https://github.com/Form5/Spinnach/archive/master.zip).

## Instructions

After installation simply load the files in the head of your document,
preferrably right after you load your site's CSS files:

```html
<head>
  ...
  <link rel="stylesheet" href="path/to/spinnach.min.css">
  <script src="path/to/spinnach.min.js"></script>
</head>
```

### Lazy loading

Wrap your image as follows, add the onload attribute and you're good to go.
The default approach assumes you have fixed height and width set on your
image wrapper. The image will then be faded in when it has loaded successfully.

```html
<div class="img-wrapper">
  <img src="..." onload="Spinnach.load(this)" />
</div>
```

### Pre-loading images

Spinnach also supports image pre-loading. It can be useful when you'd like to
load images before they are requested. F.x. if you have a large "hero section"
with image backgrounds on your sub-pages, it can make a better user experiences
if these images have already been loaded before the user requests them.

To do that you simply call `Spinnach.preload()` and pass in an array of images
that you'd like to preload:
```js
Spinnach.preload([
  '/img/image-1.png',
  '/img/image-2.png',
  '/img/image-3.png'
]);
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

Written by [Form5](http://www.form5.is). Inspired by
[Barrel](http://www.barrelny.com/blog/taking-control-of-imageloading/).

### Contributors

[Olafur Nielsen](http://twitter.com/olafurnielsen), co-founder at
[Form5](http://www.form5.is).

[Benedikt D Valdez](http://github.com/benediktvaldez), developer at
[Form5](http://www.form5.is).
