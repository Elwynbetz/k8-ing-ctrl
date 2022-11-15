kubectl get nodes
yum install git -y
git clone https://github.com/nginxinc/kubernetes-ingress/
cd kubernetes-ingress/deployments
git checkout v1.9.0
kubectl apply -f common/ns-and-sa.yaml
kubectl apply -f rbac/rbac.yaml
kubectl apply -f common/default-server-secret.yaml
kubectl apply -f common/nginx-config.yaml
kubectl apply -f common/ingress-class.yaml
kubectl apply -f daemon-set/nginx-ingress.yaml
kubectl get ns
kubectl get pod --namespace nginx-ingress
kubectl describe pod nginx-ingress-g9ffq --namespace nginx-ingress
kubectl logs nginx-ingress-g9ffq --namespace nginx-ingress
kubectl get pod --namespace nginx-ingress
kubectl describe pod nginx-ingress-mbfqp --namespace nginx-ingress
kubectl apply -f school.yml
kubectl get ns
kubectl get pods -o wide --namespace school
kubectl get ingress --namespace school
kubectl describe ing school-ingress --namespace school
