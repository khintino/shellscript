#!/bin/bash

# Estrutura de dados (Variaveis)

day=${date +%d-%m-%Y}
log='/var/log'
git='/home/analista/git/shell'

# Algoritimo/Programa (regra de negocio)
clear 
echo -e "\nInforme o e-mail\n"
read email
# executa o backup de /var/log
# executa o backup de varia log 
# se funcionar envia email com backup se nao envia informando a falha
#cd $log
#tar czf /backup/log-$day.tar.gz auth.log



#if [ $? -eq 0 ]
#   then 
#      echo -e "Backup executado em $date\n" | mutt -s "Backup $log - $date" -a /backup/log-$day.tar.gz -- $email 
#else
#   echo -e "Falha no backup $log em $day" | mail -s "Falha no backup dos logs - $day" $email
#fi



for ((i=0; i<10; i++))
do
   echo -e "Prezada BICHONA\n\n\n\nVocê foi selecionada para receber dicas do mundo gay\ndo site de encontros gay ao qual foi se cadastrou para\n participar de festas, encontros, viagens de pessoas\n as quais tenham interesses identicos aos seus, você vai\n receber endereços de lojas especializadas em produtos para\n o publico gay relação de Hotéis, pousadas, lojas, que oferecem\n descontos aceitam hospedagem de casais gays, etc\n\n\n\n\nDepartamento de Marketing" | mutt -s "Backup $log - $date" -- $email 
done


# executa o backup do diretorio /home/analista/git/shell somente se o backup de /var/log funcionar

#if [ $? -eq 0 ]
#   then 
#      cd #git
#      tar czf /backup/git-$day.tar.gz *
#fi
