#!/usr/bin/env bash
#GPUs=(0 0 1 2 3 4 5 6)
#GPUs=(0 1 2 3 4 5)
GPUs=(0 1 2 3 4 5 6 7)
#for i in $(seq 0 7); do
#    for j in $(seq 0 4); do
#        nohup bash docker_python.py ${GPUs[$i]} "job.py --i1 $i --i2 $j" &
#    done
#done

for i in $(seq 0 9); do
    for j in $(seq 0 4); do
        nohup bash docker_python.sh $i "job.py --i1 $i --i2 $j" &
    done
done
