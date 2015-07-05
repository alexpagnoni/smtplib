#!/bin/bash

WHERE=`pwd`

if [ -a .encoded ]; then
  TGZ_NAME="smtplib-enc-1.0.0.tgz"
  DIR_NAME="smtplib-enc"
else
  TGZ_NAME="smtplib-1.0.0.tgz"
  DIR_NAME="smtplib"
fi

cd ..
tar -cvz --exclude=OLD --exclude=*~ --exclude=CVS --exclude=.?* --exclude=np --exclude=.cvsignore -f $TGZ_NAME $DIR_NAME
cd $WHERE
