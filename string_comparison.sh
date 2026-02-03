#!/bin/bash
#Comparacao de striing avançadas 
set -x
string=" Ola , viva novo projecto"

if [[ "$string" == *"viva"* ]]; then
	echo " a String contem ´viva´ "
	else 
	echo " a strinf nao contem ´viva´ "
fi

if [[ "$string" == " Ola"* ]]; then
	echo " a string começa por ´ Ola´ "
	else 
	echo " a string nao contem ´viva´ "
fi

if [[ "$string" =~ ^[0-9]+$ ]]; then
	echo " a string consiste so em digitos "
else 
	echo " a string nao consiste so em digitos "

fi

if [[ "$string" =~ ^[a-zA-Z0-9]+$ ]]; then
	echo " a string consoiste em letras e numeros "
else 
	echo " a string nao consiste so em letras e numeros "

fi 
