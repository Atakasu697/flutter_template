# flutter_template

## 概要
初回：2022.02.27
flutterバージョン：2.10.2
dartバージョン：2.16.1

## コマンド
sh flutter_template/scripts/flutter_create.sh

## 注意
シェルの組織名がcom.quickfpとなっているので必要に応じて変更してください。

## 開発環境
環境として２つの環境を作成します。
環境分けには--dart-defineを利用しています。
dev：開発環境
prod：本番環境

## アイコン
アイコン画像は下記のフォルダに保存してください。
assets/icon

また、アイコン画像のファイル名は下記のように用意してください。
開発環境用アイコン：/assets/icon/icon-dev.png
本番環境用アイコン：/assets/icon/icon-prod.png

flutter pub get
flutter pub run flutter_launcher_icons:main

## アプリ起動・ビルド
* アプリ起動

flutter run --dart-define=FLAVOR=dev

* アプリビルド

flutter build ios --dart-define=FLAVOR=dev



## 使い方

* Githubでコードを管理するなら、

* プロジェクトを作成したら、アイコン画像を用意し、環境ごとにアイコンを設定してください。

* Firebaseの設定は・・・