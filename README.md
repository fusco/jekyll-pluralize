# jekyll-pluralize

[![Build Status](https://travis-ci.com/fusco/jekyll-pluralize.svg?token=3MyQnqkrgpzDsKfyWtLB&branch=main)](https://travis-ci.com/fusco/jekyll-pluralize)

A plugin to make an simple pluralize with Jekyll.

## installation

Add this line to your application's Gemfile

```ruby
gem 'jekyll-pluralize'
```

and add this line in your application's `_config.yml` :

```yml
# _config.yml

plugins:
  - jekyll-pluralize
```

## Usage

In you html file, use liquid syntax with :

```liquid
{{ number | pluralize: 'singular', 'plural' }}
```
### with singular and plural words

If `page.posts.size = 1` or `page.posts.size = 0`

```liquid
<span>
 {{ page.post.size }}
 {{ page.post.size | pluralize: 'post', 'posts' }}
</span>
```

render :

```html
<span>
 1 post or 0 post
</span>
```

If `page.posts.size >= 2`

```liquid
<span>
 {{ page.post.size }}  
 {{ page.post.size | pluralize: 'post', 'posts' }}
</span>
```

render :

```html
<span>
 2 posts
</span>
```
 ### with singular and without plural words

If `page.posts.size = 1` or `page.posts.size = 0`

```liquid
<span>
 {{ page.post.size }}  
 {{ page.post.size | pluralize: 'post' }}
</span>
```

```html
<span>
 1 post or 0 post
</span>
```
If `page.posts.size >= 2`

```liquid
<span>
 {{ page.post.size }}  
 {{ page.post.size | pluralize: 'post' }}
</span>
```

render :

```html
<span>
 2 posts
</span>
```