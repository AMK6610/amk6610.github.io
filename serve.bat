@echo off
REM Build and serve the site locally at http://localhost:4000
REM
REM Extra Jekyll flags are passed straight through, e.g.:
REM     serve.bat --livereload
REM     serve.bat --port 4001

setlocal
cd /d "%~dp0"
bundle exec jekyll serve --config _config.yml,_config.dev.yml %*
endlocal
