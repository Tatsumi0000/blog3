# 使うイメージ
FROM node:14.5.0-alpine3.11
# 実行するコマンド
RUN apk update && apk upgrade && \
  # gitをインストール
  apk add git && \
  npm install -g npm && \
  # gridsomeを入れる
  npm install -g @gridsome/cli
