# Delete longhorn webhooks first
kubectl patch engineimage ei-b907910b -n longhorn-system -p '{"metadata":{"finalizers":[]}}' --type=merge
kubectl patch engine pvc-2dc57f0d-14c7-4958-a35d-c570e4dcbcd5-e-0 -n longhorn-system -p '{"metadata":{"finalizers":[]}}' --type=merge
kubectl patch replicas pvc-2dc57f0d-14c7-4958-a35d-c570e4dcbcd5-r-2eb45d7c -n longhorn-system -p '{"metadata":{"finalizers":[]}}' --type=merge
kubectl patch volumeattachment.longhorn.io pvc-2dc57f0d-14c7-4958-a35d-c570e4dcbcd5 -n longhorn-system -p '{"metadata":{"finalizers":[]}}' --type=merge
kubectl patch volume pvc-2dc57f0d-14c7-4958-a35d-c570e4dcbcd5 -n longhorn-system -p '{"metadata":{"finalizers":[]}}' --type=merge
kubectl patch node.longhorn.io k3s-0 -n longhorn-system -p '{"metadata":{"finalizers":[]}}' --type=merge
kubectl patch node.longhorn.io k8s-1 -n longhorn-system -p '{"metadata":{"finalizers":[]}}' --type=merge
kubectl patch node.longhorn.io k8s-2 -n longhorn-system -p '{"metadata":{"finalizers":[]}}' --type=merge
kubectl patch node.longhorn.io k8s-3 -n longhorn-system -p '{"metadata":{"finalizers":[]}}' --type=merge
kubectl patch node.longhorn.io k8s-4 -n longhorn-system -p '{"metadata":{"finalizers":[]}}' --type=merge
kubectl patch node.longhorn.io k8s-5 -n longhorn-system -p '{"metadata":{"finalizers":[]}}' --type=merge
