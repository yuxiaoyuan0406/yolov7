#!/bin/bash

py=/home/dennis/anaconda3/envs/rolov7/bin/python
f=/home/dennis/Programs/yolov7/train.py

name=yolov7-people

workers=8
device=0
batch_size=32
data=/home/dennis/Programs/yolov7/data/coco-people-47k.yaml
width=640
height=640
cfg=/home/dennis/Programs/yolov7/cfg/training/yolov7-tiny-people.yaml
weights=\'\'
hyp=/home/dennis/Programs/yolov7/data/hyp.scratch.p5.yaml
epochs=50
save_period=2

$py $f \
--workers $workers \
--device $device\
--batch-size $batch_size \
--data $data \
--img $width $height \
--cfg $cfg \
--weights $weights \
--name $name \
--hyp $hyp \
--epochs $epochs \
--save_period $save_period
