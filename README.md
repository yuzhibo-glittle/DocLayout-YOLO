docker use：
1. docker build -t doclayout_yolo .
2. docker run -it \
  --gpus all \
  -v /home/songzq/huangyanqin/DocLayout-YOLO/layout_data:/root/code/layout_data \
  -v /home/songzq/huangyanqin/DocLayout-YOLO/models:/root/code/models \
  doclayout_yolo \
  /bin/bash