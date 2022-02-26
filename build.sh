#!/bin/sh

rm -rf build/*
pip3 uninstall -y utilities-0.1-py3-none-any.whl
python3 setup.py bdist_wheel
pip3 install dist/utilities-0.1-py3-none-any.whl
python3 tasks/$1
