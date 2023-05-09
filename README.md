# secret_restaurant_with_springboot

secret_restaurant_with_springboot【秘密のレストラン】

*EngineersGateの"springboot"の課題としてHTMLと共に2か月間独学しながら作成したポートフォリオ

テーマ:マスターに招待された人のみ入店が許される秘密のレストラン【SECRET RESTAURANT-マンチカン-】

## アプリの目的:

お客様側:レストランのお客様として新規登録することでレストランの料理やニュースを閲覧可能。また食べたい料理のリクエストや問い合わせたいことがあれば問い合わせ画面からレストランに問い合わせることが可能。

レストラン側:お客様が新規登録することでデータベースにて顧客管理を行えるようにする。またプロフィール画面にお客様IDとバーコードを認証することで、
どの客が来店したのかを分かるようにしている。

## 主な機能

1.ログイン機能

2.新規登録機能

3.メニュー閲覧

4.ニュース閲覧

5.問い合わせ機能

6.プロフィール画面(バーコード認証)

7.masterでログインした時のみ表示される顧客管理機能

(ログイン画面にて「お客様ID=master」「パスワード=password」でログインすると上部にCUSTOMERボタンが出現)

![master](https://github.com/Miho-S-1998/secret_restaurant_with_springboot/assets/122101928/f6d89c14-2e25-4706-8497-8f05ad0a6c9f)

# SECRET RESTAURANTのアプリケーションを利用するまで

1.eclips内のdata.sqlにあるschema文でデータベース(secret_restaurant)をmysqlに作成

![sql](https://github.com/Miho-S-1998/secret_restaurant_with_springboot/assets/122101928/de6c3b28-fd4b-4992-bd4a-d10b34789a50)


2.アプリケーションを起動。起動後は、次のURLにアクセス⇒(http://localhost:8080/login)

3.「新規登録はこちら」で「お客様ID(番号のみのお客様ID不可)」、「パスワード」、「メールアドレス」、「性別」を入力

⇒登録

![ログイン](https://github.com/Miho-S-1998/secret_restaurant_with_springboot/assets/122101928/0e56b5c0-02e5-4bb0-8c27-7c1aa188b8b8)
![登録](https://github.com/Miho-S-1998/secret_restaurant_with_springboot/assets/122101928/573886fc-0aac-4d8c-8756-3d9e8278403b)

ちなみに登録後、データベースには以下のように情報が入力される(id=2)。(*テーブルを編集しています)

![site_user](https://github.com/Miho-S-1998/secret_restaurant_with_springboot/assets/122101928/f0d856aa-eea5-4a8c-8b16-33dc24078169)




4.再度ログイン画面が表示されるので「お客様ID」と「パスワード」を入力してログイン

![login](https://github.com/Miho-S-1998/secret_restaurant_with_springboot/assets/122101928/eb85c99a-32e0-4585-92e4-1526af4fc0e9)


5.ログイン成功のメッセージの下にある「マンチカンのホームページに移動」をクリック

![success](https://github.com/Miho-S-1998/secret_restaurant_with_springboot/assets/122101928/9463592c-52ed-48f4-830c-d0b8644f6bb3)


6.SECRET RESTAURANTのホームページが表示されるので上部の「NEWS」「MENU」「CONTACT」の中から見たいページを

クリック。一番右端のアイコンの下にお客様ID(ユーザー名)が表示されるので、クリックするとプロフィール画面になる。

![home](https://github.com/Miho-S-1998/secret_restaurant_with_springboot/assets/122101928/c8d11c92-bf7b-4e0e-ac09-3cbc753cf416)

![profile](https://github.com/Miho-S-1998/secret_restaurant_with_springboot/assets/122101928/847f7f07-d3eb-4298-a145-cc5653e0d2f1)

## 設計(このアプリを作成した時の環境)

OS:Windows11 Home

IDE:Eclips 2022-12

Java:17

springboot:3.0.5(その他はpom.xml参照)

mysql:8.0.32

project:Maven

## DB設計

![secret_restaurant mwb](https://github.com/Miho-S-1998/secret_restaurant_with_springboot/assets/122101928/9fa652f6-505d-4c96-983c-783bd8ebac57)


## パッケージ

![構成](https://github.com/Miho-S-1998/secret_restaurant_with_springboot/assets/122101928/f4826893-980f-4854-8707-868b5e278f31)

### src_main

config=アプリのセキュリティーの部分

contoller=コントローラクラス

model=@Entityクラスを持ち、テーブル作成時のカラム名となる

repository=リポジトリークラス

service=サービス(ビジネスロジック:ユーザー名の検索+情報を返す)

util=ユーティリティクラス(共通処理などを記述)

validator=重複登録の防止する処理などを記述

## src_resource

![構成2](https://github.com/Miho-S-1998/secret_restaurant_with_springboot/assets/122101928/2a708eb6-7f51-4f3b-bb29-da5672cfa435)


data.sql=schema文を記述(テーブルのcreate文は使用しなくても動作することは確認済み)

# Last(この作品を見て頂く皆様へ)

本アプリケーションはSpringbootとHTMLを2ヵ月以上かけて独学して作成したものであるため、必要に応じて改善予定。

本アプリケーションを起動する前にschema文でデータベース作成してから起動してください。エラーになります。

本作品のMenuに出てくる料理(チーズトーストとブラックコーヒーを除く)とwebページデザインは全て一から手作りしました。
