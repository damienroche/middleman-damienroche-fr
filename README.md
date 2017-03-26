# (damienroche.fr) Simple static website made with Middleman

Building a simple static website with middleman in ruby, js, sass, slim and yml.

## Installation

Cd to the project folder. If not, install middleman with

```
gem install middleman
```

## Datas
Datas are stored in `.yml` files into data folder.

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

