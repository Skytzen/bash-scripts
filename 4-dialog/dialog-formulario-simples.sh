#!/bin/bash

CADASTRO=$(dialog --stdout \
	--title "Exemplo de formulário" \
	--form "Digite seus dados:" 10 55 0 \
		"Nome: " 1 1 "" 1 7 50 0 \
		"Idade: " 2 1 "" 2 8 50 0 \
		"Cidade: " 3 1 "" 3 9 50 0 \
		"Profissão: " 4 1 "Programador(a)" 4 12 50 0)

dialog --title "Resultado do cadastro:" \
	--msgbox "$CADASTRO" 0 0
