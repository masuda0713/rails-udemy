# README
# プロジェクト名
開発環境の構築

## 構成
- Ruby：3.2.2
- Rails：7.0.8
- MySQL：8.0
- Docker
- Render.com⇒MySQLのため、デプロイできていない

## インストール方法
### Dockerコンテナの起動
```bash
docker compose build //compose.yamlファイルに基づいて、Dockerイメージを構築
docker compose up -d //複数のコンテナを起動し、バックグラウンドで実行します
```
### データベースのセットアップ
```bash
docker-compose exec web bash
rails db:create  #データベースの作成
rails db:migrate  #データベースのスキーマーを最新にする(マイグレーションファイルを順番に実施)
exit
```
### アクセス確認
ブラウザで http://localhost:3000 にアクセス可能

### 注釈
ファイル・フォルダの権限は作成時に自動で更新される

MySQLのため、Render.comへのデプロイは出来ていない。