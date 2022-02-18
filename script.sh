sudo kubectl -n kubernetes-dashboard get svc kubernetes-dashboard -o yaml > service.yml
sed -i 's/ClusterIP/NodePort/g' service.yml
sed -i '25 a\    nodePort: 32323' service.yml
sudo kubectl apply -f service.yml -n kubernetes-dashboard
sudo kubectl -n kubernetes-dashboard get secret $(sudo kubectl -n kubernetes-dashboard get sa/admin-user -o jsonpath="{.secrets[0].name}") -o go-template="{{.data.token | base64decode}}" > token.txt