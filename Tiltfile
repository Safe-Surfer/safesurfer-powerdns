helmSet=[
    "service.tcpEnabled=true"
]

if os.getenv('SHARINGIO_PAIR_NAME'):
    helmSet = helmSet + [
        "service.type=LoadBalancer",
        "service.externalTrafficPolicy=Local",
        "service.externalIP[0]=" + os.getenv("LOAD_BALANCER_IP")
    ]
else:
    helmSet = helmSet + [
        "service.type=NodePort"
    ]

yaml = helm(
  'deployments/safesurfer-powerdns',
  name='safesurfer-powerdns',
  namespace='safesurfer-powerdns-dev',
  values=['deployments/safesurfer-powerdns/values.yaml'],
  set=helmSet
  )
k8s_yaml(yaml)
if os.getenv('SHARINGIO_PAIR_NAME'):
    custom_build('registry.gitlab.com/safesurfer/safesurfer-powerdns', 'docker build -f Dockerfile -t $EXPECTED_REF .', ['.'], disable_push=True)
else:
    docker_build('registry.gitlab.com/safesurfer/safesurfer-powerdns', '.')
allow_k8s_contexts('in-cluster')
