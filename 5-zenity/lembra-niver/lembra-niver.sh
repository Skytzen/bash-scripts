#!/bin/bash

while true
do

retorno () {

	zenity --question --text="Deseja continuar o cadastro?"
	if [[ $? = 1 ]]; then
	exit 0
	else
	menu
	fi
}

menu () {

zenity --forms --title="Cadastro de amigo(a)" \
	--text="Cadastre seu amigo(a):" \
	--separator="," \
	--add-entry="Nome" \
	--add-entry="Sobrenome" \
	--add-entry="Email" \
	--add-entry="Telefone" \
	--add-calendar="Data do aniversário" >> dados.csv

case $? in

	0) zenity --info --text="Amigo(a) inserido no cadastro!"
	retorno
	;;

	1) zenity --error --text="Ops! Cadastro não foi realizado!"
	retorno
	;;
   
esac

}

menu
done
