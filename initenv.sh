#!/bin/sh

export PIPENV_VENV_IN_PROJECT=1
pipenv install
#pipenv install nvidia_cublas_cu11-11.10.3.66-py3-none-manylinux1_x86_64.whl
pipenv install wheels/nvidia_cublas_cu11-11.11.3.6-py3-none-manylinux1_x86_64.whl
pipenv install wheels/nvidia_cudnn_cu11-8.5.0.96-2-py3-none-manylinux1_x86_64.whl
pipenv install wheels/nvidia_cuda_nvrtc_cu11-11.7.99-2-py3-none-manylinux1_x86_64.whl
pipenv install wheels/torch-1.13.0-cp38-cp38-manylinux1_x86_64.whl