TextRoller
========

TextRoller is a Javascript and CSS library for smoothly transitioning words.
This plugin is largely derived from the plugin [Odometer](https://github.com/HubSpot/odometer) made by 
[Adam Schwartz](https://twitter.com/adamfschwartz) and 
[Zack Bloom](https://twitter.com/zackbloom) of HubSpot.

## Getting Started

This plugin have no dependancies.
Download the [production version][min] or the [development version][max].

[min]: https://raw.github.com/lambda2/text-roller/master/textroller.min.js
[max]: https://raw.github.com/lambda2/text-roller/master/textroller.js

In your web page:

```html
<!-- the odometer stylesheet -->
<link rel="stylesheet" href="../themes/odometer-theme-minimal.css" />

<script src="../textroller.js"></script>
<div id="roller" class="textroller"></div>

<script>
  var elt         = document.getElementById("roller");
  var texts       = ["pancake", "muffin", "cookie"]
  elt.textroller  = new TextRoller({
      el: elt,
      values: texts,    // an array of texts.     default : [el.innerHtml]
      align: "left",    // right, left or middle. default : middle
      delay: 3000,      // in milliseconds,       default : 5000
      loop: false       // at the end, restart.   default : true
  });
</script>
```
