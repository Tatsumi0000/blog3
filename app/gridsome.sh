#!/bin/sh
cd my-blog
if [ -e "package.json" ]; then
  gridsome develop
else
  # 実際にプロジェクトを作成
  gridsome create .
  # gridsomeのStrapiのやつを入れる
  npm install @gridsome/source-strapi
  # 生成
  gridsome develop
fi
