docker use：
1. docker build -t doclayout_yolo .
2. docker run --shm-size=4g -it \
  --gpus all \
  -v /nas/hyq/DocLayout-YOLO/layout_data:/root/code/layout_data \
  -v /nas/hyq/DocLayout-YOLO/models:/root/code/models \
  doclayout_yolo:v0 \
  /bin/bash

val:
python val.py --data d4la --model models/doclayout_yolo_d4la_imgsz1600_from_scratch.pt --device 7 --batch-size 16

train:
python train.py --data d4la --model m-doclayout --epoch 10 --image-size 1600 --batch-size 4 --project public_dataset/D4LA --pretrain models/doclayout_yolo_docsynth300k_imgsz1600.pt --optimizer Adam --lr0 0.001 --warmup-epochs 1.0 --patience 2 --device 7