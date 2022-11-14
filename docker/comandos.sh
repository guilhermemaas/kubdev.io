#Rodar um container
docker container run hello-world

#-d => Executar o container em background
#-i => Executa em modo interativo
#-t => Habilita tty
#-p => Faz o bind da porta da sua máquina local com o container
#-e => Define variáveis de ambiente

#Rodar container com nome específico:
docker container run --name container-teste hello-world

#Excluir container
docker container rm id
docker container rm nome

#Container irá se auto-excluir após execução
docker container run --name container-teste --rm hello-world

#Rodar container em modo interativo
docker run -it ubuntu /bin/bash

#Rodar em modo daemon:
docker container run -d nginx

#Port Binding:
docker container run -d -p 8181:80 nginx
#externo:container

#MongoDB
docker container run -d -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=mongouser -e MONGO_INITDB_ROOT_PASSWORD=mongopwd mongo

#Build de imagem:
docker commit
#Ou Dockerfile

docker image build -t ubuntu-curl .


