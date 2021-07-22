---
kind: Secret
apiVersion: v1
metadata:
  name: cloudflare-service-account
  namespace: nginx-ingress
data:
  service_account: ${CLOUDFLARE_GREENPEACE_ORIGIN_CA_API_KEY}
type: Opaque
---
apiVersion: cert-manager.k8s.cloudflare.com/v1
kind: OriginIssuer
metadata:
  name: cloudflare-origin-issuer-prod
  namespace: nginx-ingress
spec:
  requestType: OriginECC
  auth:
    serviceKeyRef:
      name: cloudflare-service-account
      key: service_account
