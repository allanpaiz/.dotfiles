#!/bin/bash

whoami
hostname

wget https://raw.githubusercontent.com/s7117/csce215labs/main/mnist_condensed.csv

ls -a -l

mkdir data
mv mnist_condensed.csv data

ls ./data
head -23 ./data/mnist_condensed.csv
tail -34 ./data/mnist_condensed.csv
wc -l ./data/mnist_condensed.csv
cut -f 1 ./data/mnist_condensed.csv
cut -f 392 ./data/mnist_condensed.csv
rm -r -f data
