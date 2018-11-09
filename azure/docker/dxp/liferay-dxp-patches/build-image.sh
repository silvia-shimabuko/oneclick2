#!/bin/bash

set -e

cd $(dirname $(readlink -f $0))

VERSION_NAME_DXP=$1

docker build --build-arg DXP_IMAGE=liferay/liferay-dxp:$VERSION_NAME_DXP --tag liferay/liferay-dxp:$VERSION_NAME_DXP-hotfix1 .