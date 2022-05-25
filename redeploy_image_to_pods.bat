docker build . -f Dockerfile --tag my-py-image:0.0.1
kind load docker-image my-py-image:0.0.1
kubectl rollout restart deployment/example-deploy