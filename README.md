# Simple static website made with Middleman

## Installation

Cd to the project folder. If not, install middleman with

```
gem install middleman
```
## Run local server
```
bundle exec middleman server
```
## Build
```
bundle exec middleman build
```
## Deployment

Deployment is perform with middleman-deploy using ftp method. FTP credentials are stored in .password & .user files

To deploy, run :
```
bundle exec middleman deploy
```
By setting `deploy.build_before` to `true` onto `config.rb` build is automaticly done before each upload.

