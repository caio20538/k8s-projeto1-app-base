echo "Criando as imagens...."

docker build -t nomeDeUsuarioDockerHub/projeto-backend:1.0 backend/.
docker build -t nomeDeUsuarioDockerHub/projeto-database:1.0 database/.

echo "Realizando o push das imagens...."

docker push nomeDeUsuarioDockerHub/projeto-backend:1.0
docker push nomeDeUsuarioDockerHub/projeto-database:1.0

echo "Criando serviços no cluster kubernets...."

kubctl apply -f ./services.yml

echo "Criando os deployments...."

kubctl apply -f ./deployment.yml