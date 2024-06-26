# docker環境構築
1. docker公式よりPCにdockerをダウンロードして下さい  
(Windowsの場合は[Dockerのインストール方法(Windows).md](/Dockerのインストール方法(Windows).md)を参照して下さい)
1. 自分でデスクトップなどにフォルダを1つ作成してください, 名前に指定はありません  
次にVScodeを開き，その作成したフォルダをターミナルに移動して開いてください
1. このリポジトリを以下のコマンドを実行してダウンロードしてください
    ```
    git clone --recursive https://github.com/LearningEngineeringLaboratory/kbfira_setup.git
    ```
1. 続けて以下のコマンドを実行してdockerを立ち上げてください. 以下のコマンドを実行し,kbfira_setup-mainに移動・Dockerを立ち上げて下さい  
    ```  
    cd kbfira_setup
    ```
    ```
    docker-compose up -d
    ```
1. 以下のコマンドより,nginxとmysqlのコンテナが作成されたか確認して下さい
    ```
    docker ps
    ```
    以下のように表示されればOK
    | CONTAINER ID | IMAGE | COMMAND |CREATED|STATUS|PORTS|NAMES|
    |:-------|:--------|:-------|:-------|:--------|:-------|:-------:|
    |...      |kbfira_setup-main-nginx        |"/sbin/my_init"       |...|...|0.0.0.0:8081->80/tcp |nginx-container|
    |...     |mysql:latest         |"docker-entrypoint.s…"      |...|...|33060/tcp, 0.0.0.0:3308->3306/tcp|mysql-container|

1. ブラウザで以下のURLにアクセスして下さい
    http://localhost:8081/kbfira_docs/index.php/admin/m/x/app/setup
    ![URL:初期画面](img/URL_initial.png)
1. データベースの初期化を行うために,Select databese configuration:のプルダウンからkbv2-firaを選択して下さい
1. 続いて下に移動して,Begin Database Setupボタンを押して下さい※ボタンを押すと確認画面が出ますが,Yesを選択して下さい
    ![URL:setup](img/URL_setup.png)
1. 続いてその下にあるSet Initial Dataボタンを押して下さい
1. 動作確認をするために,右上の人アイコンをクリックしてSign inボタンを押し,Usernameの欄に"admin"を入力し(パスワード欄は不要),サインインを行なって下さい
1. 右上に Sign is successfulと表示されログインできれば,環境構築完了です
<br>

# ソースコードの場所  
ソースコードはこちらのフォルダ内にあります  
`kbfira_setup/nginx/kbfira_docs`

# dockerコマンド一覧
```
docker images #イメージ確認
docker ps (-al) #コンテナ確認(-alをつけると停止中のコンテナも表示)
docker-compose up -d #ymlファイルを用いたコンテナ作成
docker run -it (コンテナ名:ID) /bin/bash #コンテナ起動
docker exec -it (コンテナ名:ID) /bin/bash #コンテナへアクセス
docker stop ID #コンテナ停止
docker rm ID #コンテナ削除
docker logs ID #エラー時などのログ確認
docker-compose logs (コンテナ名) #docker-composeでのログ出力,コンテナ名を指定するとその箇所のみのログを出力
```
# LiveServer実装
1. 以下の記事(URL)より,手順に沿ってインストールして下さい
    https://web-niar.com/blog/vscode-liveserver-mamp/
1. 手順1~5のうち2と5は不要
