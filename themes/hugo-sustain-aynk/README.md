## Table of Contents

- [Table of Contents](#table-of-contents)
- [Installation](#installation)
    - [With `git`](#with-git)
    - [Manual](#manual)
- [Contents](#contents)
    - [List](#list)
    - [Tips](#tips)
    - [Single page](#single-page)
    - [Blog post](#blog-post)
- [Features](#features)
    - [Shortcodes](#shortcodes)
    - [Syntax highlighting](#syntax-highlighting)
    - [Disqus](#disqus)
    - [Google Analytics](#google-analytics)
    - [Amazon onelink](#amazon-onelink)
    - [Amazon adv](#amazon-adv)
    - [Ko-fi](#ko-fi)
- [Front matter](#front-matter)
- [About](#about)
- [License](#license)

## Installation

#### With `git`

From the root of your Hugo site, clone the theme into `themes/hugo-sustain-aynk` by running :
```
cd themes/
git clone https://github.com/altrdev/hugo-sustain-aynk.git hugo-sustain-aynk
```

Or use submodule:
```
cd themes/
git submodule add https://github.com/altrdev/hugo-sustain-aynk.git
```

#### Manual

1. [Download][zip-archive] zip archive.
2. Unarchive it.
3. Move `hugo-sustain-aynk` folder in `themes` folder of your blog

Hugo includes a development server, so you can view your changes as you go -
very handy. Spin it up with the following command:

``` sh
hugo serve
```

Now you can go to [localhost:1313][local] and the Sustain
theme should be visible.

## Contents
You can write four types of contents: `List`, `Tips`, `Blog post` or `Single page`  

### List
This is automatic content. 
When you create a folder under `it` or `en` a page is generated with a list of the elements contained in the folder.

You can customize a `front matter` creating an `_index.md` page in the folder.

### List expanded
Is equivalent to `list`, but listing is more detailed. 
For using it, you must set `layout: list-expanded` in a `_index.md` front matter.

### Tips
This is a special template.
You must putting in `data/en/tips` or `data/it/tips` folder the real content.
For using this special template, you must set `layout: tips` in your `front matter`.
Examples in `content/en/tips.md` or `content/it/consigli.md`.

Format `data` content like this:
```yaml
name: General
source:
  - icon: fa fa-flag
    number: 0
    description: Example 1

  - icon: fa fa-money
    number: 1
    description: Example 2
```

### Single page
This is a standard template if you don't specify any `layout:` in a `front matter`.
Is a simple white page and you can find examples in `content/en/donate.md` or `content/it/donazioni.md`.

### Blog post
Is a single page template with additions.
You must set `blog: true` in a `front matter` for transform your default page.
Blog post adds `Disqus` comments and related post section.

## Features

### Shortcodes
Some `shortcodes` are available:

+ leaflet
+ bundle-image
+ tips-category

`leaflet-[map-marker-track]`: you can insert a map on a page. Other info [here][leaflet-shortcode]

`bundle-image`: you can insert an image on a page
```js
{{< bundle-image name="name of image in a media folder" alt="alt description" caption="caption description" >}}
```

`tips-category`: print a list of category tips
```js
{{< tips-category "page_name.md" >}}
```

You can also use default hugo shortcodes like:

`ref`: you can linking another page 
```js
[Link name]({{< ref "page_name.md" >}})
[Link name]({{< ref "page_name.md#anchor" >}})
``` 

### Syntax highlighting

Use `highlight = true` in the front matter to include [`highlight.js`][highlight-js] javascript and css files.

### Disqus

To use this feature, uncomment and fill out the `disqusShortname` parameter in `config.toml`.

### Google Analytics

To add Google Analytics, simply sign up to [Google Analytics][g-analytics] to obtain your Google Tracking ID, and add this tracking ID to the `googleAnalytics` parameter in `config.toml`.

### Amazon onelink

If you are an amazon affiliate and do you want using onelink, add you instance ID to the `amazon_onelink` parameter in `config.toml`.

### Amazon adv

For use Amazon adv
To add amazon banners, set the `amazon_ads` parameter in `config.toml` like this:

```toml
[params.amazon_ads]
    desktopBanner = "https://rcm-eu.amazon-adsystem.com/..."
    mobileBanner = "https://rcm-eu.amazon-adsystem.com/..."
```

If you serve Hugo in localhost, fake banner appear.

### Ko-fi
You can add a donation message after a blog post. Fill out the `kofi` parameter in `config.toml` with your ko-fi id.

## Front matter
`Front matter` example:

```yaml
---
date: 2020-02-11
author: Alessandro
authorLink: Twitter
title: "My Blog Post"
description: "My Blog Post description"
tags: [ keyword 1, keyword 2, keyword 3 ]
categories: [ mycategory ]
blog: true
highlight: true
image: media/my-image.jpg
markup: blackfriday
translationKey: my-article
---
```

`date`: file date

`author`: name of author. You can insert a new name or linking one already set in a `config.toml`. For linking start with this example:

```toml
[params.authorOne]
  name = "Alessandro"
  fullName = "Alessandro Travi"
  Website = "https://altr.dev"
  Twitter = "https://twitter.com/altrdev"
  Instagram = "https://www.instagram.com/alessandro.travi/"
```
In this case, the value is `One`. You must specify the word after `author`

`authorLink`: social link about author. Values must be a key under author params under `config.toml`. In the example above, you can specify `Website`, `Twitter`, `Instagram`

`title`: page title

`description`: page description

`tags`: keywords for a page

`categories`: page categories

`blog`: use if you want a page like a Blog Post

`highlight`: include `highlight.js` javascript and css files

`image`: main image for page. Useful for social sharing

`markup`: content format; using `blackfriday` is recommended 

`translationKey`: linking multilanguage page with different name. 

`draft`: specify draft content. **Accepted values**: `true`

## About

This is a fork of the Hugo theme [Sustain][sustain] by [Nurlan Su][sustain-author].

## License
<p>
  <a href="./LICENSE.md"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/MIT_logo.svg/642px-MIT_logo.svg.png" height="60px"></a>
</p>

[sustain]: https://github.com/nurlansu/hugo-sustain
[sustain-author]: https://github.com/nurlansu
[zip-archive]: https://github.com/altrdev/hugo-sustain-aynk/archive/master.zip
[local]: http://localhost:1313/
[highlight-js]: https://highlightjs.org/
[g-analytics]: https://www.google.com/analytics/
[leaflet-shortcode]: https://github.com/altrdev/hugo-leaflet 
