cd ~/.ssh
mkdir ~/.ssh
cd ~/.ssh
# Criar a chaves SSH
ssh-keygen -t rsa -C "ricardo.moraes@anbetec.com.br"
#Visualizar chaves
ls -lah ~/.ssh
#Iniciar o agente SSH
ssh-agent /bin/bash 
#Adicionar a chave ao agente SSH
ssh-add ~/.ssh/id_rsa 
#Verificar a chave adicionada
ssh-add -l 
#Copiar conteudo da chave pública client
cat ~/.ssh/id_rsa.pub | xclip -sel clip

# após copiar o conteudo da chave, colar na chave que está criando dentro do BitBucket

# alterar repositório de
# https://<accountname>@bitbucket.org/timeanbetec/<reponame>.git
# para
# git@bitbucket.org:timeanbetec/<reponame>.git
