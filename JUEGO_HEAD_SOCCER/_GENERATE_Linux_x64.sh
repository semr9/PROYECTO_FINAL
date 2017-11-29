#!/bin/bash  
echo "This is a shell script"  

mkdir build
cd build

mkdir mak.unix
cd mak.unix

mkdir x64
cd x64

rm CMakeCache.txt

error=$( cmake -DCMAKE_CONFIGURATION_TYPES="Debug;Release" -G "Unix Makefiles" ../../../ )

if  [$? -eq 0];  then 
  echo "Nao houve error. Pressione qualquer tecla para finalizar."  
else
  echo "Houve um erro. $error Pressione qualquer tecla para finalizar."  
fi

#cd ../../../ 
