## 自分のブログ
### これなに？
- 自分のブログを，`Gridsome` + `Strapi` + `nginx` + `Docker`で作るリポジトリ．
- また，作成する上で参考にしたサイトもメモする．
### ローカルでの動かし方（後で丁寧に書く）
#### 開発環境
- mac（Windowsでも多分動く）
- Docker
- docker-compose
#### セットアップ
- このプロジェクトをcloneする．
  - `$ git clone https://github.com/Tatsumi0000/blog3.git`
- ドメインを登録（？）する．（これは，macの場合の設定方法．Windowsは別にあるので後で追記する）
  - `$ sudo vim /etc/hosts`
  - 以下を`/etc/hosts`の最後に加える．
```
127.0.0.1 soleil-luminous.inc
127.0.0.1 api.soleil-luminous.inc
```
- データベースなどの設定ファイル（.env）を作成．
  - `blog3`ディレクトリ直下に`.env`ファイルを作成．
  - 以下を書き加えて，保存．
```
DATABASE_CLIENT=mysql
DATABASE_NAME=strapi
DATABASE_HOST=mysql
DATABASE_PORT=3306
DATABASE_USERNAME=strapi
DATABASE_PASSWORD=password
MYSQL_ROOT_PASSWORD=root-password
```
- プロジェクトを立ち上げる．（初回起動はかなり時間がかかる）
  - `$ cd blog3`
  - `$ docker-compose up -d`
- ブラウザで確認する．
  - ブログ本体を見る．
    - `soleil-luminous.inc`
  - APIを見る．
    - `api.soleil-luminous.inc`
  - APIの管理画面を見る．
    - `api.soleil-luminous.inc/admin`
- プロジェクトを止める．
  - `$ docker-compose down`
### 参考にしたサイト
- [Gridsome](https://gridsome.org/)
#### docker-composeファイルの書き方
- [Go(Echo) + Vue.js + nginx の環境をDocker Composeで立てる。](https://qiita.com/69incat/items/9bbfbf8566535dc266c6)
- - [dockerhub node](https://hub.docker.com/_/node)
- `context`関連の参考
  - [Compose ファイル・リファレンス](http://docs.docker.jp/compose/compose-file.html)
#### nginxの設定
- [WebSocketのプロキシ](http://mogile.web.fc2.com/nginx/http/websocket.html)
- [proxy_set_header Upgrade $http_upgrade;](https://qiita.com/YuukiMiyoshi/items/d56d99be7fb8f69a751b#proxy_set_header-upgrade-http_upgrade)
- [実践編ーDockerを使ってnginxでリバースプロキシを立ててみる](https://qiita.com/zawawahoge/items/d58ab6b746625e8d4457)

#### 作成メモ
- Strapiがサブディレクトリでドメインを切り分けるのを推奨していないっぽい．ので，サブドメインで切り分けている．（サブディレクトリでの切り分けもできなくはないが別にこだわりがないのでサブドメインでいく）
