#!/bin/bash
echo ${PASSWORD}

if [ ! -f deleteMeForReinstall ]; then
  wget http://mcmyadmin.com/Downloads/MCMA2_glibc26_2.zip && unzip MCMA2_glibc26_2.zip; rm MCMA2_glibc26_2.zip;
  
  /install.sh ${PASSWORD}
  touch deleteMeForReinstall
fi

./MCMA2_Linux_x86_64

/bin/bash