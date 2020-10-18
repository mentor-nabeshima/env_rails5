# env_rails5
Rails5系の開発環境  
DBはmysql5.7を使用

## Usage
クローン  
クローンしてきたディレクトリがアプリ名になるのでオプションで名前をつける  
git clone https://github.com/mentor-nabeshima/env_rails5.git app_name  
例
```bash
git clone https://github.com/mentor-nabeshima/env_rails5.git pictweet
```

コンテナの起動
```bash
docker-compose up -d
```

Railsのファイル群の生成
```bash
docker-compose web rails _5.2.1_ new . -f -d mysql --skip-bundle
```

コンテナの再構築
```bash
docker-compose up -d --build
```

app/config/database.ymlを以下のように修正
![connect_database](https://user-images.githubusercontent.com/61768993/96358975-2326e080-1148-11eb-9092-e380ebdf78c2.png)

DBの作成
```bash
docker-compose run web rails db:create
```

新規タブでlocalhost:3000にアクセスしアプリを表示  
localhost:8080でphpMyAdminを表示

Gemfileに新しいgemを追加した場合
```bash
docker-compose up -d --build
```

コンテナをアタッチしてデバッグ  
docker attach アプリ名_web_1  
例 
```bash
docker attach pictweet_web_1
```

デバッグの終了  
Ctrl + p + q
