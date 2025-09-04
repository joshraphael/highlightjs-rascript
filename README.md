# highlightjs-rascript

[highlight.js](https://highlightjs.org/) syntax definition for [RATools](https://github.com/Jamiras/RATools) DSL, RAScript

[![GitHub License](https://img.shields.io/github/license/joshraphael/highlightjs-rascript)](https://github.com/joshraphael/highlightjs-rascript/blob/main/LICENSE)
[![test](https://github.com/joshraphael/highlightjs-rascript/actions/workflows/test.yaml/badge.svg)](https://github.com/joshraphael/highlightjs-rascript/actions/workflows/test.yaml)
[![release](https://github.com/joshraphael/highlightjs-rascript/actions/workflows/release.yaml/badge.svg)](https://github.com/joshraphael/highlightjs-rascript/actions/workflows/release.yaml)
[![GitHub Tag](https://img.shields.io/github/v/tag/joshraphael/highlightjs-rascript)](https://github.com/joshraphael/highlightjs-rascript/tags)
[![GitHub repo size](https://img.shields.io/github/repo-size/joshraphael/highlightjs-rascript)](https://github.com/joshraphael/highlightjs-rascript/archive/main.zip)

Available on [NPM](https://www.npmjs.com/package/@joshraphael/highlightjs-rascript) and [Github Packages](https://github.com/joshraphael/highlightjs-rascript/pkgs/npm/highlightjs-rascript)

## Setup

Directly import the distribution library and have RAScript autodetected

### Static Website

```html
<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.11.1/highlight.min.js"></script>
<script src="https://raw.githubusercontent.com/joshraphael/highlightjs-rascript/refs/heads/main/dist/rascript.min.js"></script>
<script type="text/javascript">
  hljs.highlightAll();
</script>
```

### Node

```js
var hljs = require('highlight.js');
var rascript = require('@joshraphael/highlightjs-rascript');

hljs.registerLanguage("rascript", rascript);
hljs.highlightAll();
```

## Commands:

|Title|Command|Parameters|Description|
|-|-|-|-|
|Test|`make test`|None|Test the rascript highlightjs module|
|Generate|`make gen`|None|Generate the distribution Javascript of the rascript highlightjs pacakge|
|Upgrade rascript-syntax|`make upgrade`|None|Upgrade the rascript-syntax version|
|Run|`make run`|None|Build and start simple http webserver with example RAScript syntax (using auto-detection)|