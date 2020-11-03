- [Helm](#sec-1)


# Helm<a id="sec-1"></a>

Create the namespace:

```bash
kubectl create namespace safesurfer-powerdns
```

Install:

```bash
helm install safesurfer-powerdns -n safesurfer-powerdns deployments/safesurfer-powerdns
```

Upgrade:

```bash
helm upgrade safesurfer-powerdns -n safesurfer-powerdns deployments/safesurfer-powerdns
```

Uninstall:

```bash
helm uninstall safesurfer-powerdns -n safesurfer-powerdns
```
