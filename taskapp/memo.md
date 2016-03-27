- sacaffoldの規約
    - モデル名は、単数形
    - カラム属性は、デフォルトがtitle

```
% rbenv exec bundle exec rails g model Project title
```

- rails dbコマンド
    - 利用しているDBを操作出来るインターフェイス
- rails consoleコマンド
    - railsのインターフェイスで各種オブジェクトをインタラクティブに操作出来る
- Model.create
    - newとsaveを同時実行するメソッド
- rake routes
    - アプリケーションのルーティング確認
    - linkヘルパで利用できるpathも表示している
        - 左端の項目に________pathをつける

```
$ rake routes
projects GET    /projects(.:format)          projects#index
```

```ruby
<%= link_to "Home", projects_path %>
```

- rails generate model 
    - Modelを新規追加
    - referencesで他テーブルとの関連を表現

```zsh
$ % rbenv exec bundle exec rails g model Task title done:boolean project:references

```

- rails generate controller
    - Controllerを新規追加
    - モデル名は複数形

```
% rbenv exec bundle exec rails g controller Tasks
```
