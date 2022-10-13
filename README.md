# 顔認証システム

headshots.pyで画像を数枚撮影(スペースで撮影しescで終了)．datasetフォルダに保存される．
train_model.pyで学習
face_recognition.pyで顔認証

## 依存ライブラリ 
```bash
pip install requirements.txt
```

## dockerで実行
```bash
docker build -t face_recognition .
docker run -it --rm -v $(pwd):/app face_recognition
```# face_recognize_with_python-
