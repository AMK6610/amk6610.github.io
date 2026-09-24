
# Academic Pages

![pages-build-deployment](https://github.com/academicpages/academicpages.github.io/actions/workflows/pages/pages-build-deployment/badge.svg)

Academic Pages is a Github Pages template for academic websites.


# Getting Started

1. Register a GitHub account if you don't have one and confirm your e-mail (required!)
1. Click the "Use this template" button in the top right.
1. On the "New repository" page, enter your repository name as "[your GitHub username].github.io", which will also be your website's URL.
1. Set site-wide configuration and add your content.
1. Upload any files (like PDFs, .zip files, etc.) to the `files/` directory. They will appear at https://[your GitHub username].github.io/files/example.pdf.  
1. Check status by going to the repository settings, in the "GitHub pages" section
1. (Optional) Use the Jupyter notebooks or python scripts in the `markdown_generator` folder to generate markdown files for publications and talks from a TSV file.

See more info at https://academicpages.github.io/

## Running Locally

### One-time setup

**Ruby version matters.** This site is built by GitHub Pages' own Jekyll, which
the `github-pages` gem mirrors. That gem set is pinned to Jekyll 3.x and needs
**Ruby 3.1.x** — Ruby 3.2 removed `Object#tainted?`, which the `pathutil`
dependency still calls, and Ruby 3.4 dropped `csv`/`base64`/`bigdecimal` from
the default gems. Newer Ruby will fail during `bundle exec jekyll serve`.

- **Windows:** install [Ruby+Devkit 3.1.x (x64)](https://rubyinstaller.org/downloads/)
  from RubyInstaller. Pick a `Ruby+Devkit` build, not the plain one — some gems
  (`eventmachine`, `wdm`) compile from source. At the end of the installer let it
  run `ridk install` and choose option 3 (MSYS2 and MINGW development toolchain).
- **macOS / Linux:** use a version manager, e.g. `rbenv install 3.1.6 && rbenv local 3.1.6`.
  On Debian/Ubuntu you also need `sudo apt install build-essential`.

Then, from the repository root:

```bash
gem install bundler
bundle install
```

### Serving the site

```bash
bundle exec jekyll serve --config _config.yml,_config.dev.yml
```

On Windows you can just run `serve.bat`, which wraps the same command.

The site is then at <http://localhost:4000>. Jekyll watches for changes and
rebuilds automatically; refresh the browser to see them. Add `--livereload` to
refresh automatically, though that relies on EventMachine and is occasionally
flaky on Windows.

**Always pass both config files.** `--config` replaces the default config lookup
instead of adding to it. `_config.dev.yml` blanks out `url`, which `_config.yml`
pins to the production domain — without it, `_includes/base_path` would point
every stylesheet, script and image at the live site and your local edits would
not show up. It also switches off Analytics locally.

### Rebuilding the JavaScript bundle

`assets/js/main.min.js` is committed, so you only need this if you edit
`assets/js/_main.js` or anything in `assets/js/plugins/`. It needs Node:

```bash
npm install
npm run build:js
```

# Maintenance 

Bug reports and feature requests to the template  should be [submitted via GitHub](https://github.com/academicpages/academicpages.github.io/issues/new/choose). For questions concerning how to style the template, please feel free to start a [new discussion on GitHub](https://github.com/academicpages/academicpages.github.io/discussions).

This repository was forked (then detached) by [Stuart Geiger](https://github.com/staeiou) from the [Minimal Mistakes Jekyll Theme](https://mmistakes.github.io/minimal-mistakes/), which is © 2016 Michael Rose and released under the MIT License (see LICENSE.md). It is currently being maintained by [Robert Zupko](https://github.com/rjzupkoii) and additional maintainers would be welcomed.

## Bugfixes and enhancements

If you have bugfixes and enhancements that you would like to submit as a pull request, you will need to [fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo) this repository as opposed to using it as a template. This will also allow you to [synchronize your copy](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork) of template to your fork as well.

Unfortunately, one logistical issue with a template theme like Academic Pages that makes it a little tricky to get bug fixes and updates to the core theme. If you use this template and customize it, you will probably get merge conflicts if you attempt to synchronize. If you want to save your various .yml configuration files and markdown files, you can delete the repository and fork it again. Or you can manually patch.
