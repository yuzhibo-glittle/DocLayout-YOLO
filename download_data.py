from huggingface_hub import snapshot_download
# snapshot_download(repo_id="juliozhao/doclayout-yolo-D4LA", repo_type="dataset", cache_dir="/home/songzq/huangyanqin/DocLayout-YOLO/layout_data")
# snapshot_download(repo_id="juliozhao/doclayout-yolo-DocLayNet", repo_type="dataset", cache_dir="/nas/hyq/DocLayout-YOLO/layout_data")
snapshot_download(repo_id="juliozhao/DocLayout-YOLO-D4LA-Docsynth300K_pretrained", local_dir="./models")