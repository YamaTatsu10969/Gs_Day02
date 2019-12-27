# Gs_Day02

## はじめに

課題発表！！！
よろしくお願いします！！！

発表し終わったら、拍手で終わりましょう😆🎉

---


# アンケート結果

---

# アンケート結果

<img width="758" alt="スクリーンショット 2019-12-25 午後10.11.50.png" src="https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/326574/e7e625cd-c254-3122-7c76-999b64445665.png">

---

<img width="763" alt="スクリーンショット 2019-12-25 午後10.12.01.png" src="https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/326574/21f5f3c9-31b4-cf5c-501b-d0528234c27a.png">

---
<img width="751" alt="スクリーンショット 2019-12-25 午後10.12.07.png" src="https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/326574/8912204d-8f30-1bc4-edb4-bbb317a869ba.png">
---

# アンケート結果
嬉しい意見ありがとうございました🙇‍♂️

---
# 改善します🙇‍♂️

1. どんなアプリにその機能が使われているか例を出す
2. コードを記述する
3. 話を聞くところ、手を動かすところを伝える
4. デバック方法や、エラーを調べながら解決する方法を授業中にやります！
5. 画面を大きくする！！！（目が悪い人は前に来て欲しい🙇‍♂️）

---
# 伝えたいこと

- プログラミングは理解するものじゃない
- 3回目くらいでなんとなくわかる
- 理解する → 書く🙅‍♂️
- 書く → 書く → 書く → 理解🙆‍♂️
- 悩むくらいなら書きましょう！

---

# 復習👀

- AutoLayout
    - 設定すると大きさが違う端末でもうまく表示できる
    - ボタンの配置
    - 画像の配置
    - ラベルの配置
    - 間隔は 8の倍数がいい
    

- 遷移
次の画面に遷移できる

```swift:ViewController.swift    

// 下からニョキっ
let vc = NextViewController()
present(vc, animated: true)

```


```swift
// 下からニョキっ
let vc = NextViewController()
let navi = UINavigationController(rootViewController: vc)
present(navi, animated: true)

↓↓↓↓↓↓↓↓↓↓↓ NextViewControllerに遷移後

// 横に移動する遷移ができるようになる
// NextViewController
let vc = ThirdViewController()
navigationController?.pushViewController(vc, animated: true)

```


- if文

```swift

if textField.text = "やまたつ" {
   // テキストフィールドに書いてある文字が「やまたつ」ならこっち
} else {
   // それ以外ならこっち
}

```


- 画像
    - 好きな画像を `Assets.xcassets` に入れる
    - `UIImage(named: "cry")` のように表示


---
# 本日の内容

---

# UserDefaults 

---
## UserDefaults 

簡単に言うと、アプリ内にデータを保存できる機能。
保存したり、取り出したりできる。
アプリを閉じても、保存されている。
皆さんが使った localStorage みたいなものです。 

---
## UserDefaults
key と value で構成されています！
key と value を伝えて保存できます。
key を伝えて、データと取り出せます。

```swift
// textField に記述したものを input に入れる。
let input = textField.text

// 保存する方法
UserDefaults.standard.set(input, forKey: "user_input")

// 取り出す方法
let inputText = UserDefaults.standard.string(forKey: "user_input")

```


---

すごく勉強になる記事です！（著者のウホーイさんは信頼できるエンジニア）

[UserDefaultsの概要と操作方法(Swift) - Qiita](https://qiita.com/uhooi/items/429cac9b798b9c0937ae#userdefaults%E3%81%AE%E4%BD%BF%E7%94%A8%E4%BE%8B)

---

## オプショナル

---

## オプショナル
空っぽを許す型！ nil(ニル) って言います。
nil を入れることができるものです。

? を見かけた時は、<font color="red">「空っぽの時があるかもしれないのか！」</font> と思っておけばOKです☺️

---
## 前回学んだ型 
`String`, `Int`, `Bool` 

```swift
let name: String = "やまたつ"
var age: Int = 26 
let isMale: Bool = true
```

---
# オプショナル

型に `?` をつけるとオプショナルになります。
`String` と `String?` は違います。

```swift
var middleName: String? = nil
```

---
## オプショナル
```swift
var lastName: String = "やまもと"
var firstName: String? = "たつや"
// 型が違うから。nil が入ってるかもしれないから
let fullName = lastName + firstName // エラー
```

--- 
## オプショナル
オプショナルは ？ を取ることで、その型として使えます。
例: String? → String 
？ を取ることを **アンラップ** と言います。

---
## オプショナルのアンラップの仕方
```swift
var middleName: String? = "ジェームス"

// その1 if let 
if let name = middleName {
   print(name) // String になってアンラップされている
} 
// nil だったらこっち


// その2 guard let 
guard let name = middleName else {
  return // middleName が nil だったらこっち
}
print(name) // String になってアンラップされている


// その3 強制アンラップ（あまり使わない）
print(name!) // nil だったらアプリが落ちる


```

---
めちゃいい記事
[【Swift】Optional型を安全にunwrapしよう - Qiita](https://qiita.com/mokumoku/items/5fef496f4e97a053e53e#optional-chaining)

---

# アプリを作成していきます！
StartProject の StartUserDefault を起動してください！
青いアイコンのものです（）


---

# TableView

---
## TableView
Twitter や LINE, Apple純正のメモアプリ など多くアプリに使われています！
ほとんどのアプリで使われているので、
TableView さえ使えればアプリを作ることができると言っても過言ではないでしょう😆

---
## TableView：例

|メモ|LINE|
|---|---|
|<img width="375" alt="IMG_3010.PNG" src="https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/326574/2fe30c6e-3c7b-e817-5c8f-e97ad868c890.png">|<img width="375" alt="IMG_3009.PNG" src="https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/326574/436a0765-c667-437a-b39e-51e629fb8795.png">|

---

# 実際の使い方はコードで学ぶしかない！作りましょう！


---
わかりやすい記事！

[[チュートリアル] UITableViewControllerでショッピングカテゴリ画面を作る | Plain media](https://programfromscratch.com/uitableviewcontroller%E3%81%A7%E3%82%B7%E3%83%A7%E3%83%83%E3%83%94%E3%83%B3%E3%82%B0%E3%82%AB%E3%83%86%E3%82%B4%E3%83%AA%E7%94%BB%E9%9D%A2%E3%82%92%E4%BD%9C%E3%82%8B/#UITableViewController)

---
# 配列の使い方

[【Swift】配列の使い方 | カピ通信](https://capibara1969.com/968/)

---

デフォルトのセルの使い方はこちら。

[Swift – UITableViewの基礎を学ぼう (セルのスタイルの種類について) | WEB ARCH LABO](https://weblabo.oscasierra.net/swift-uitableview-2/)

---

## アプリを作成してみよう！


--- 

# 今週の課題

## TableView を使ったアプリ作成（LINE 風に作成してみる！など。）
1. TableView を使用する
2. 配列を使用する

できる人は！！！
→ セルをタップした時に何かする（画像を表示とか。次の画面に遷移とか）

その他、やりたいことをなんでもしてみてください！

---

# 次回までに準備して欲しいこと

1. 実機でアプリを起動できるようにする(ARを使うので)
2. GitHub のアカウントを作成→ [GitHub 入門 ～アカウントを作成する方法～ | サービス | プロエンジニア](https://proengineer.internous.co.jp/content/columnfeature/7103)
3. Sourcetree をインストール→ [SourceTree(3.0.15)をインストールしてみた - Qiita](https://qiita.com/tetsu831018/items/bb6ecf15ca5f67e5879a)


---
# お疲れ様でした！良いお年を！！！
