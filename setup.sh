#!/bin/bash
rm -rf build
rm /usr/local/lib/python3.5/dist-packages/pyyolo*
make
python3 setup_gpu.py build
python3 setup_gpu.py install
python3 -c "import pyyolo;"
