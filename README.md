## Kubernetes setup

docker build . -f Dockerfile --tag my-py-image:0.0.1
kind create cluster --config=./kubernetes/kind/config.yaml
kind load docker-image my-py-image:0.0.1
kubectl apply -f .\kubernetes\deployments\deployment.yaml
kubectl apply -f .\kubernetes\services\services.yaml   


## Docker dev en setup
docker-compose -f .\docker-compose-dev.yaml up -d
> Connect using Ctr+Shift+P > Remote container: Attach to runiing container