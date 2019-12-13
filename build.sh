#!/usr/bin/env bash
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)

cp -r ./* docker/vnclet/
cd docker/base
docker build -t registry.cn-hangzhou.aliyuncs.com/cloudplus-lab/kubeext-vnc-base:v1.6.0-arm8 .
cd ${SHELL_FOLDER}/docker/vnclet
docker build -t registry.cn-hangzhou.aliyuncs.com/cloudplus-lab/vm-terminal:v1.6.0-arm8 .
