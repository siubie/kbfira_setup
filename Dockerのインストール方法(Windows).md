1. Windows terminalをインストールする
1. Vscodeをインストールする
1. Gitをインストールする
1. Dockerをインストールする
   1. <https://www.docker.com/>のページに飛ぶ
   1. 一番下にスクロールし、DevelopersのDocsのリンクを押す
   1. Download and installのリンクを押す
   1. Docker Desktop for Windowsのリンクを押す
   1. 少しスクロールするとTurn on the WSL 2 ... Microsoft DocumentationがあるのでそこからMicrosoft Documentationに入る
   1. Microsoft Documentationを以下の手順でWSL 2をインストールする（インストール方法が変わっている可能性があるので確認するように）
      1. Windows terminalを右クリックし管理者で実行する
      1. 下記のコマンドを打ち込む

```
   wsl␣--install
```

1. Microsoft storeからubuntuと検索し、ダウンロードされていることを確認する
1. Docker Desktop for Windowsのページの一番上にDocker Desktop for WindowsボタンがあるのでDockerをダウンロードする
1. 手順に沿ってダウンロードを行う
1. Windows terminalを開き上の∨からubuntuを開きユーザとパスワードを設定する
1. Docker Desktopを開いた状態で、ubuntuで下記のコマンドを打ち込むことでubuntuが動いていることを確認する
```
   docker␣--version
```
