yaml = helm(
  'deployments/safesurfer-powerdns',
  name='safesurfer-powerdns',
  namespace='safesurfer-powerdns-dev',
  values=['deployments/safesurfer-powerdns/values.yaml'],
  set=[
      "service.type=NodePort"
  ]
  )
k8s_yaml(yaml)
docker_build('registry.gitlab.com/safesurfer/safesurfer-powerdns', '.')
allow_k8s_contexts('in-cluster')
