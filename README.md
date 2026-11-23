# [JGalego.github.io](https://jgalego.github.io)

[![Jekyll](https://github.com/JGalego/JGalego.github.io/actions/workflows/jekyll.yml/badge.svg)](https://github.com/JGalego/JGalego.github.io/actions/workflows/jekyll.yml)

Personal website built on top of [Jekyll](https://jekyllrb.com/) and [GitHub pages](https://pages.github.com/).

<img src="https://thumbs.gfycat.com/BareRespectfulBarasinga-size_restricted.gif" width="200" alt="Construction/under-development animation"/>

## Setup

### Prerequisites

The only requirement is to have Ruby installed.

We recommend using [RVM](https://github.com/rvm/rvm) to manage different Rubu versions, but you can use package managers like [Homebrew](https://brew.sh) or [Chocolatey](https://chocolatey.org/install) to set it up.

## Run Locally

1. Install [Bundler](https://bundler.io) and [Jekyll](https://jekyllrb.com/)

    ```bash
    gem install bundler jekyll
    ```

2. Install dependencies

    ```bash
    bundle install
    ```

3. Start the server

    ```bash
    bundle exec jekyll serve
    ```

## How it's put together

* **Posts** use `layout: post`, which renders the title, date, reading time, tags and older/newer links, so a post's body starts straight with its content. Optional front matter: `heading` (page heading, if it should differ from `title`), `heading_link` (makes the heading a link) and `image` (social card; defaults to the first local JPG/PNG in the post).
* **Images** only need `src` and `alt` (plus an optional `width="50%"`). Dimensions, `loading="lazy"` and `decoding="async"` are added at build time by `_plugins/image_attrs.rb`. Prefer WebP for screenshots and MP4 (in `assets/videos/`) over GIFs.
* **Projects** live in `_data/projects.yml`. Only projects with at least one GitHub star are shown, ordered by stars, then most recent push. Both are fetched at build time by `_plugins/project_stats.rb`, and the Pages workflow rebuilds every Monday to keep the page current.
* **Redirects** from short or legacy paths live in `_data/redirects.yml`.
* **Links**: internal links and images are checked on every push; external links are checked weekly (see `.github/workflows/`). To run the internal check locally:

    ```bash
    bundle exec jekyll build
    bundle exec htmlproofer ./_site --disable-external --no-enforce-https --ignore-urls "/^\/(navier-stokes|MappingEmbeddings|VectorGarden|GenAI|HyperLab|RunNX)\/$/"
    ```

## References

* (Jekyll) [Documentation](https://jekyllrb.com/docs/)
* (Moncef Belyamani) [Making GitHub Pages Work with Jekyll 4+ and any Theme and Plugin](https://www.moncefbelyamani.com/making-github-pages-work-with-latest-jekyll/)
* (GitHub) [GitHub Pages Documentation](https://docs.github.com/en/pages)