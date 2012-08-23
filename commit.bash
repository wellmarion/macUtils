#!/bin/bash
parametro="$@"

erro=###
executaMvn() {
  cd $MVN_FOLDER;mvn test  
}
executaCommit() {
 cd ..;  
 git commit -m "$parametro"  
 echo Commit efetuado ...	
 
}

executaPush() {
 echo "Deseja efetuar o PUSH? (Y/N)"
 read resposta
 case $resposta in Y|y)
        git push;;
    *)
       echo $erro "Comando PUSH nao efetuado" $erro;;
 esac
}

executa(){
  if [ -z "$parametro" ] 
   then
	echo $erro Digite uma mensagem $erro
  else	
	echo Rodando testes ...	
        executaMvn && executaCommit 
	if [ $? -ne 0 ] 
	  then
	   	echo $erro COMMIT NAO EFETUADO - ERRO AO EXECUTAR TESTES $erro 
	  else
	      executaPush	
	fi
	
  fi   	
}
executa