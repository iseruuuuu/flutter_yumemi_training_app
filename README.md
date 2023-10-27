# 株式会社ゆめみ Flutter 研修

# 環境構築

## リポジトリをクローン
```
git clone https://github.com/iseruuuuu/flutter_yumemi_training_app.git
```

## ディレクトリに移動
```
cd flutter_yumemi_training_app
```

## fvmをインストール・使用
fvmについては[こちらのサイト](https://zenn.dev/altiveinc/articles/flutter-version-management)を参考にしました。

### 1.fvmをインストールする

#### Dartでインストール
```
dart pub global activate fvm
```

#### Homebrewでインストール
```
brew tap leoafarias/fvm
brew install fvm
```

### 2.PATHを通す
```
export PATH="$PATH:$HOME/.pub-cache/bin"
```
### 3.指定したバージョンをインストール

```
fvm use 3.13.6
```

## パッケージをインストール

```
fvm flutter pub get
```


## アーキテクチャについての記載

- https://github.com/iseruuuuu/flutter_yumemi_training_app/blob/main/ARCHITECTURE.md
