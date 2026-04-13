# GitHub Branch Dropdown Fix

GitHubのブランチ選択プルダウンで、ブランチ名が長いと途中で見切れる問題を解消するChrome拡張機能です。

## 解決する問題

GitHubのブランチ切り替えドロップダウンは横幅が固定されており、`feature/REPORT-662-663-add-residence-type-and-update-related-patient` のような長いブランチ名が `...` で省略されてしまいます。この拡張機能はドロップダウンの横幅を広げ、ブランチ名を全て表示します。

## インストール方法

1. Chrome で `chrome://extensions/` を開く
2. 右上の「デベロッパーモード」をオンにする
3. 「パッケージ化されていない拡張機能を読み込む」をクリック
4. このフォルダ（`github-branch-dropdown-fix`）を選択

## 対応UI

GitHubのブランチドロップダウンには新旧2種類のUIがあり、両方に対応しています。

| UI種別 | 対象セレクター | 対応内容 |
|---|---|---|
| 旧UI (SelectMenu形式) | `.SelectMenu-modal` | 幅を500pxに拡張 |
| 新UI (Primer / Overlay形式) | `.Overlay--size-*` | 横スクロールで全表示 |

## 幅のカスタマイズ

旧UIは `content.css` 内の `500px` を変更することで幅を調整できます。

```css
/* 旧UI */
.SelectMenu-modal {
  width: 500px !important;   ← ここを変更
}
```

新UIは横スクロール方式のため、幅の変更はありません。

## ファイル構成

```
github-branch-dropdown-fix/
├── manifest.json   # 拡張機能の設定
├── content.css     # CSS上書きスタイル
├── icon16.png
├── icon48.png
└── icon128.png
```
