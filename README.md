# SBSquare
Soccer Biggner Square

#概要
ユーザー登録、ログイン機能
ツイート投稿機能
ツイートに対してのコメント投稿機能
ツイート一覧表示の際のページネーション機能

＃本番環境
https://sbsquare.herokuapp.com/

テストアカウント
NAME:test1
MAIL:test1@test1.jp
PASSWORD:12345678

NAME:test2
MAIL:test2@test2.jp
PASSWORD:09876543

#制作背景
サッカーの試合を見た事はあるが、直接スタジアムに観戦に行った事がない、または行きたいがどうしたらいいかわからない人に向けたサイトです。
周りにサッカー好きの知り合いがおらず、一人では行きづらい。モニター越しの観戦で十分と思っている。そのような方にスタジアムでの観戦の素晴らしさや、仲間を見つけてもらえたらを思い作成しました。

＃DEMO
https://i.gyazo.com/e7b981ef1e84a876d5a45bd99f2b70ab.jpg
https://i.gyazo.com/317f723cea8196e1d24c04f77d00deb1.mp4

＃工夫したポイント
使いやすさ、見た目を重視しシンプルなviewにしました。

＃開発環境
Ruby 2.5.1
Ruby on Rails 5.2.2
MYSQL
GitHub Git
Heroku

#今後実装したい機能
いいね機能
試合の順位が見れる機能(サッカーapi)
検索機能

＃DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :tweets
- has_many :comments

## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||
|text|text||
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :tweet
- belongs_to :user


