# learning-ruby_on_rails

🌱🌱🌱 日本人エンジニアの基礎教養としての"Ruby on Rails"を学習する。  

以下の2つの技術を使用する。  

- Ruby on Rails
- PostgreSQL

## 実行方法

以下のコマンドを順に実行する。  

```shell
docker compose up db -d [--build]
docker compose up web -d [--build]
```

`docker compose up db -d`コマンドでPostgreSQLデータベースを作成。  
これを実行した段階で、ローカル(ホスト)マシンに接続しているため、ローカルからデータベースにアクセス可能。  

| 設定 | 設定値 |
| ---- | ---- |
| host | localhost |
| port | 5432 |
| user | rails_study |
| password | password |

---

次に、`docker compose up web -d`を実行する。  
これでRailsサーバが立ち上がる。  

## 自分用メモ

初回時は`docker-compose run web rails new . --force --no-deps --database=postgresql`コマンドで、イロイロなデータを作成した。  

```shell
# モデルの作成
rails generate model <モデル名>
# docker-compose run web rails generate model <モデル名>
```
