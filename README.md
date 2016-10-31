# docker-gohugo
Docker image to work with go-hugo

[![Docker Repository on Quay](https://quay.io/repository/yazpik/docker-gohugo/status "Docker Repository on Quay")](https://quay.io/repository/yazpik/docker-gohugo)

#### 
"Hugo is a general-purpose website framework. Technically speaking, Hugo is a static site generator. Unlike other systems which dynamically build a page every time a visitor requests one, Hugo does the building when you create your content. Since websites are viewed far more often than they are edited, Hugo is optimized for website viewing while providing a great writing experience."
Hugo was originally developed by Steve Francia https://github.com/spf13


This repository builds an [alpine:3.4](https://hub.docker.com/r/library/alpine/) Docker image with [Hugo](http://gohugo.io/) installed.

The `hugo` binary lives in `/bin/hugo` and the default `CMD` is set to Hugo, so to generate a site, run this:

```console
docker run --rm -v $PWD:/pwd -w /pwd quay.io/yazpik/docker-gohugo
```

I recommend generating with verbose mode on, so to do that run this:

```console
docker run --rm -v $PWD:/pwd -w /pwd quay.io/yazpik/docker-gohugo hugo -v
```


To serve, watching files, run like this:

```console
docker run --rm -v $PWD:/pwd -w /pwd quay.io/yazpik/docker-gohugo hugo server -w
```
