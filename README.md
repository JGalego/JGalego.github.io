# [JGalego.github.io](https://jgalego.github.io)

[![Jekyll](https://github.com/JGalego/JGalego.github.io/actions/workflows/jekyll.yml/badge.svg)](https://github.com/JGalego/JGalego.github.io/actions/workflows/jekyll.yml)

Personal website built on top of [Jekyll](https://jekyllrb.com/) and [GitHub pages](https://pages.github.com/).

<img src="https://thumbs.gfycat.com/BareRespectfulBarasinga-size_restricted.gif" width="200"/>

## Setup

### Windows

0. [Install Chocolatey](https://chocolatey.org/install)

1. Install [Ruby](https://www.ruby-lang.org/en/)

    ```bash
    choco install ruby
    ```

2. Install [MSYS2](https://www.msys2.org/)

    ```bash
    choco install msys2
    ```

3. Install *MSYS2 and MINGW development toolchain*

    ```bash
    ridk install
    ```

4. Install [Bundler](https://bundler.io) and [Jekyll](https://jekyllrb.com/)

    ```bash
    gem install bundler jekyll
    ```

5. Go to the project directory, install dependencies and start the server

    ```bash
    bundle install
    bundle exec jekyll serve
    ```

### Mac

0. Install [Homebrew](https://brew.sh)

1. Install Ruby

    ```bash
    brew install ruby
    ```

2. Install [Bundler](https://bundler.io) and [Jekyll](https://jekyllrb.com/)

    ```bash
    gem install bundler jekyll
    ```

3. Go to the project directory, install dependencies and start the server

    ```bash
    bundle install
    bundle exec jekyll serve
    ```

## References

* (Jekyll) [Documentation](https://jekyllrb.com/docs/)
* (Moncef Belyamani) [Making GitHub Pages Work with Jekyll 4+ and any Theme and Plugin](https://www.moncefbelyamani.com/making-github-pages-work-with-latest-jekyll/)
* (GitHub) [GitHub Pages Documentation](https://docs.github.com/en/pages)