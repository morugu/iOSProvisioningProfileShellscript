#!/bin/sh

if [ "$1" = "" ]
then
    echo "Usage: sh $0 <Provisioning Profile name>"
    exit
fi

PROFILE_NAME=$1
echo ${PROFILE_NAME}
cd ~/Library/MobileDevice/Provisioning\ Profiles/
find . -name "*.mobileprovision" | xargs grep "${PROFILE_NAME}" -l | xargs rm
