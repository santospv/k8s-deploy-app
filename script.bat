echo "Criando imagens"

docker build -t santospv08/projeto-k8s-backend:1.0 backend/.
docker build -t santospv08/projeto-k8s-database:1.0 database/.

echo "Enviando imagem para o repositorio do docker hub"

docker push santospv08/projeto-k8s-backend:1.0
docker push santospv08/projeto-k8s-database:1.0

echo "Criando serviços no cluster Kubernets"

kubectl apply -f ./services-php.yaml
kubectl apply -f ./services-mysql.yaml

echo "Realizando deployments"

kubectl apply -f ./deployment-pvc.yaml
kubectl apply -f ./deployment-mysql.yaml
kubectl apply -f ./deployment-php.yaml