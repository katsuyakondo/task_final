# 音声録音アプリ

## 紹介と使い方

- 今回は話した文字をリアルタイムで起こせるように websocket 通信を活用した。一方でデータベースに保存する内容はテキスト形式での保存となった。

## 工夫した点

-websocket 通信を使っての音声の文字起こしに挑戦したこと。

## 苦戦した点

- websocket 通信について全く知らなかったので、色々なことを調べながら課題の作成に取り組んだこと。

- 本来はデータベースに音声データを保存しようと考えていたが、うまく行かずテキストデータでの保存に妥協した。

## 参考にした web サイトなど

js で websocket 通信
https://qiita.com/Zumwalt/items/060ae7654c9dfe538ee7

Ami Voice API のドキュメント
https://docs.amivoice.com/amivoice-api/manual/reference/websocket/

PHP で WebSocket
https://qiita.com/toontoon/items/b8af85c409ead3290c5e
