#!/bin/bash

py=/home/dennis/anaconda3/envs/rolov7/bin/python
f=/home/dennis/Programs/yolov7/detect.py

name=yolov7-people5
train_dir=./runs/train
# source=/home/dennis/Programs/yolov7/output/test-2023-03-09-221724-clip-1-add-frame-num-2023-03-10-161648.mp4
source=/home/dennis/Programs/yolov7/output/test-2023-03-13-214015-clip-1-add-frame-num-2023-03-13-221423.mp4
size=640
conf=0.4
# view_image=--view-img
save_txt=--save-txt
# save_conf=--save-conf
# nosave=--nosave


$py $f \
--weights $train_dir/$name/weights/best.pt \
--source $source \
--img-size $size \
--conf-thres $conf \
$view_image $save_txt $save_conf $nosave \
--name $name-detect

