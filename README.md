rails-lesson
====

- [EY-Office社 Ruby on Rails実践入門研修](https://redmine.ey-office.net/projects/rails/wiki/InstallRailsMac)
	- Ruby 及び Ruby on Railsの環境構築のみ記載 

## Install

- Wikiとの相違点
	- [anyenv](https://github.com/riywo/anyenv)を利用する

### anyenvのセットアップ

```bash
# 本リポジトリをclone
## $HOME以下にインストールする場合
$ cd ~/
$ git clone git@github.com:mediba-Kitada/rails-lesson.git
## submoduleのセットアップ
$ git submodule update --init --recursive

# anyenvへのパスを設定
## 利用中のshellの設定ファイルに以下を追記
$ vi ~/.bashrc
if [[ -d $HOME/rails-lesson/anyenv ]]; then
  export PATH=$HOME/anyenv/bin:$PATH
  eval "$(anyenv init -)"
fi

# shell設定(bashの例)
$ source ~/.bash_history

# 成果確認
$ type anyenv
```

### RubyおよびRuby on Railsのセットアップ

```bash
# rbenvのインストール
$ anyenv install rbenv
$ rbenv init -

# 研修で利用するRubyのセットアップ
$ cd ~/rails-lesson
$ rbenv install `less ./.ruby-version`
## 成果確認
$ ruby --version
ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-darwin15]

# bundlerのインストール
$ rbenv exec gem install bundler

# Ruby on Railsのインストール
## rspecも
$ rbenv exec bundle install --path ./vendor/bundle
```

#### ダミープロジェクトの作成

```bash
$ mkdir -p ./tmp && cd ./tmp
$ rbenv exec bundle exec rails new dummy
```
