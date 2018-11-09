#!/bin/bash
set -e

cd $(dirname $(readlink -f $0))

VERSION=$1
VERSION_NAME_DXP=$2

source commons.sh

docker build --tag $FULLNAME:$VERSION --build-arg DXP_IMAGE=liferay/liferay-dxp:$VERSION_NAME_DXP-hotfix1 --tag $FULLNAME .