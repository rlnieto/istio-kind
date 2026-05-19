# Creamos el cluster
kind create cluster --name istio-demo

# Instalamos istio
istioctl install --set profile=demo -y

# Comprobamos que se han creado los pods
kubectl get pods -n istio-system

# Etiqueta el ns para que istio inyecte el sidecar
kubectl label namespace default istio-injection=enabled
