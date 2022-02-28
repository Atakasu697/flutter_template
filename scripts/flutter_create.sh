#!/bin/sh

echo "Hello, Flutter!"
echo "[Project Name]"

read PROJECT_NAME

mkdir generated
cd generated
rm -rf ${PROJECT_NAME}

flutter create \
  --org com.quickfp \
  ${PROJECT_NAME}

echo "Hello, $PROJECT_NAME!"

# 不要なファイルを削除
rm -rf ${PROJECT_NAME}/lib
rm -rf ${PROJECT_NAME}/android/app/build.gradle
rm -rf ${PROJECT_NAME}/android/app/src/main/AndroidManifest.xml

# lib/main.dart,assetsをコピー
cp -r ../lib ${PROJECT_NAME}
cp -r ../assets ${PROJECT_NAME}

# androidの環境分ける設定（dev,prod環境を作成）
cp -r ../android/app/build.gradle ${PROJECT_NAME}/android/app/build.gradle
cp -r ../android/app/src/main/AndroidManifest.xml ${PROJECT_NAME}/android/app/src/main/AndroidManifest.xml
cp -r ../android/dev ${PROJECT_NAME}/android/dev
cp -r ../android/prod ${PROJECT_NAME}/android/prod


open ${PROJECT_NAME}
# mkdir ${PROJECT_NAME}
# touch ${PROJECT_NAME}/sample1.txt
# touch ${PROJECT_NAME}/sample2.txt
# touch ${PROJECT_NAME}/sample3.txt

# rm -rf ${PROJECT_NAME}/sample2.txt

