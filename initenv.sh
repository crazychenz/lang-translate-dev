#!/bin/bash

# pushd wheels ; ./getdeps.sh ; popd

export PIPENV_VENV_IN_PROJECT=1
pipenv install
pipenv install wheels/nvidia_cublas_cu11-11.10.3.66-py3-none-manylinux1_x86_64.whl
pipenv install wheels/nvidia_cudnn_cu11-8.5.0.96-2-py3-none-manylinux1_x86_64.whl
pipenv install wheels/nvidia_cuda_nvrtc_cu11-11.7.99-2-py3-none-manylinux1_x86_64.whl
pipenv install wheels/torch-1.13.0-cp38-cp38-manylinux1_x86_64.whl

pipenv shell
  pip install --cache-dir $(pwd)/cache libretranslate

# pip install pipdeptree ; pipdeptree > deptree.txt

# pushd models ; ./getdeps.sh ; popd

# ./pipenv.sh libretranslate --host 127.0.0.1 --port 4321