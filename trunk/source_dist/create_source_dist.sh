#!/bin/sh
cp -f ../yasso.py .
cp -f ../modelcall.py .
cp -f ../stats.py .
cp -f ../yasso_param.dat .
cp -f ../demo_data.txt .
# linux
cp -f yasso_model/lin/y07.so .
dest=yasso07_${1}_linux.tar.gz
tar czvf $dest yasso.py modelcall.py stats.py yasso_param.dat demo_data.txt y07.so
# os x
cp -f yasso_model/osx/y07.so .
dest=yasso07_${1}_osx.tar.gz
tar czvf $dest yasso.py modelcall.py stats.py yasso_param.dat demo_data.txt y07.so
rm y07.so
# win
cp -f yasso_model/win/y07.pyd .
dest=yasso07_${1}_win.zip
zip $dest yasso.py modelcall.py stats.py yasso_param.dat demo_data.txt y07.pyd
rm y07.pyd