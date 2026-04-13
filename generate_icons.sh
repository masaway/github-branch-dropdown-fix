#!/bin/bash
# アイコンを生成するスクリプト（ImageMagickが必要）
# 使い方: bash generate_icons.sh

generate_icon() {
  local size=$1
  local output="icon${size}.png"

  convert -size ${size}x${size} \
    -background '#24292e' \
    -fill '#58a6ff' \
    -gravity Center \
    -font DejaVu-Sans-Bold \
    -pointsize $((size / 2)) \
    label:'B' \
    "$output"

  echo "Generated: $output"
}

if command -v convert &>/dev/null; then
  generate_icon 16
  generate_icon 48
  generate_icon 128
  echo "アイコン生成完了"
else
  echo "ImageMagickがインストールされていません。"
  echo "以下のコマンドでインストールするか、手動でアイコンを用意してください:"
  echo "  sudo apt install imagemagick"
  echo ""
  echo "または、Chromeに読み込む際にアイコンなしでも動作します（manifest.jsonのiconsを削除）"
fi
