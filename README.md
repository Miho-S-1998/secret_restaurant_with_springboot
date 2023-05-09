# secret_restaurant_with_springboot

secret_restaurant_with_springboot【秘密のレストラン】
Engineer Gateの"springboot"の課題としてHTMLと合わせて2か月間イチから独学で作成したポートフォリオ

テーマ:マスターに招待された人のみ入店が許される秘密のレストラン【SECRET RESTAURANT-マンチカン-】

## アプリの目的:

お客様側:レストランのお客様として新規登録することでレストランで食べられる料理やニュースを閲覧可能。また食べたい料理のリクエストや問い合わせたいことがあれば問い合わせ画面からレストランに問い合わせることが可能。

レストラン側:お客様が新規登録することでデータベースにて顧客管理を行えるようにする。またプロフィール画面にお客様IDとバーコードを認証することで、どの客が来店したのかを分かるようにしている。

##主な機能

1.ログイン機能

2.新規登録機能

3.メニュー閲覧

4.ニュース閲覧

5.問い合わせ機能

6.プロフィール画面(バーコード認証)

7.masterでログインした時のみ表示される顧客管理機能

(ログイン画面にて「お客様ID=master」「パスワード=password」でログインすると上部にCUSTOMERボタンが出現)


SECRET RESTAURANTのアプリケーションを利用するまでの流れ

1.eclips内のdata.sqlにあるschema文でデータベース(secret_restaurant)をmysqlに作成

2.アプリケーションを起動。起動後は、次のURLにアクセス⇒(http://localhost:8080/login)

3.「新規登録はこちら」で「お客様ID(番号のみのお客様ID不可)」、「パスワード」、「メールアドレス」、「性別」を入力し

    「登録」を押す。(全く同じお客様IDは同じ名前が登録できないようにしてあります。)

4.再度ログイン画面が表示されるので「お客様ID」と「パスワード」を入力してログイン

5.ログイン成功のメッセージの下にある「マンチカンのホームページに移動」をクリック

6.SECRET RESTAURANTのホームページが表示されるので上部の「NEWS」「MENU」「CONTACT」の中から見たいページを

クリック。一番右端のアイコンの下にお客様ID(ユーザー名)が表示されるので、クリックするとプロフィール画面になる。

##設計(このアプリを作成した時の環境)

OS:Windows11 Home

IDE:Eclips 2022-12

Java:17

springboot:3.0.5(その他はpom.xml参照)

mysql:8.0.32

##DB設計

##パッケージ構成

###src_main

config=アプリのセキュリティーの部分

contoller=コントローラクラス

model=@Entityクラスを持ち、テーブル作成時のカラム名となる

repository=リポジトリークラス

service=サービス(ビジネスロジック:ユーザー名の検索+情報を返す)

util=ユーティリティクラス(共通処理などを記述)

validator=重複登録の防止する処理などを記述

##src_resource

data.sql=schema文を記述(テーブルのcreate文は使用しなくても動作することは確認済み)

##Last(このアプリを利用してくださる皆様へ)

本アプリケーションはspringbootとHTMLを2ヵ月以上かけて独学した上で作成したものであるため、足りない部分は必要に応じて改善予定。

*改めてschema文でデータベース作成してから起動してください。エラーになります。
