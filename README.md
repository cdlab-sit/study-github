# Git
## ダウンロード
[Git](https://git-scm.com/download)

## インストール
各OSによってインストーラの操作手順が異なります。わからなかったら聞いてください。

## 初期設定(GitHub登録してからの方がいいかも)
ターミナルから
```
$ git config --global user.name "GitHubのユーザ名(じゃ無くてもいいけど揃えとくといい)"
$ git config --global user.email "GitHubのメールアドレス(じゃ無くてもいいけど揃えとくといい)"
```

# GitHub
## 登録
[Join GitHub](https://github.com/join)  
Username/Email address/Passwordは自分の好きなものを設定してください。多分躓くところはないと思います。  
あと、GitHubは学生プランがあって、プライベートリポジトリ(周りから見られないファイルみたいなの)が無料で作れるのでオススメです。

## リポジトリ作成
作成  
![リポジトリ作成](https://user-images.githubusercontent.com/29699789/49276057-9bd31400-f4c0-11e8-9e8a-8aaa10f4b1c6.png)  
情報入力  
![リポジトリ情報](https://user-images.githubusercontent.com/29699789/49276060-9d044100-f4c0-11e8-8cda-3527f1c6089f.png)

# ローカルリポジトリ
自分の手元で扱うリポジトリです。
リポジトリ単位で、バージョン管理を行うのですが大まかな流れは

1. インデックスに追加
1. インデックスに追加されたものをコミット

です。ここで行ったコミットがどんどん積み重なっていき、特定の地点のコミットに戻れたりします。  
またブランチを切ることで、別バージョンの開発ができたりします。

## 初期化
```
$ git init
```
で現在のディレクトリをGitリポジトリとすることができます。

## インデックスに追加
```
$ git add <追加したいファイル/ディレクトリ>
$ git add .   # 全て追加
$ git add README.md   # README.mdというファイルを追加
$ git add assets  # assetsというディレクトリを追加
```
一番よく使うのは`git add .`だと思います。ただ、これだと全てのファイルを追加してしまうため、Gitでバージョン管理しないものやアップロードされては困るファイル/ディレクトリ(例えばシークレットキーが書かれたファイルやビルドしたバイナリとか)まで追加されてしまいます。そこで`.gitignore`というファイルでGitでの管理に含めないファイル/ディレクトリを指定できます。

## コミット
```
$ git commit -m "コミットメッセージ"
or
$ git commit  # エディタが開いてメッセージを打てます
```
コミットメッセージは自由に打てますが、プロジェクトごとに書式が決まってたりもします。特になければ、変更点をわかりやすく書けばいいと思います。  
またコミットの頻度も自由ですが、細かくやることを推奨します。1つの機能や何かタスクが終わるごとにやるといいでしょう。  

ローカルリポジトリでの更新は`add`と`commit`があればいいので、この2つがもっとも高い頻度で使うことになると思います。

## ブランチ
別バージョンの開発や、機能の追加/修正ごとなどに使うことがある、バージョンの枝分かれ機能です。特に他人との共同開発ではよく使うことになると思います。
```
$ git branch <ブランチ名>  # ブランチの登録
$ git checkout <ブランチ名>    # ブランチの切替
or
$ git branch -b <ブランチ名>   # 上の二つをまとめてできる

$ git branch -d <ブランチ名>   # ブランチの消去

$ git merge <ブランチ名>   # 他のブランチと結合
```

# リモートリポジトリ(今回はGitHub)
## リモートリポジトリの追加
```
$ git remote add <リポジトリ名> <URL>
$ git remote add origin https://github.com/cdlab-sit/study-github.git # リポジトリのデフォルトの名前がoriginです 
```

## プッシュ
ローカルリポジトリの変更をリモートリポジトリにアップロードします。
```
$ git push -u <リポジトリ名> <ブランチ名>    # -uをつけると次回からgit pushのみで良くなります
$ git push -u origin master
$ git push
```

## プル
リモートリポジトリから最新版を持ってきます。作業前に必ずやるようにしましょう。
```
$ git pull 
```

# 最後に
これで一通りの作業ができると思います。ここに書いていないことや、困った時は先輩が残してくれた[作業別Gitコマンド集](https://qiita.com/kohga/items/20819414da2972bc5e0d)を見れば、だいたい書いてあると思います。