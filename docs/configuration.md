- [Helm configuration](#sec-1)


# Helm configuration<a id="sec-1"></a>

| Parameter                                     | Description                                                                      | Default                                              |
|--------------------------------------------- |-------------------------------------------------------------------------------- |---------------------------------------------------- |
| replicaCount                                  | Declare the amount of replicas to scale the deployment to                        | `1`                                                  |
| extraLabels                                   | Extra labels to add to all managed resources                                     | `{}`                                                 |
| extraEnv                                      | Declare extra environment variables                                              | `[]`                                                 |
| dnsPolicy                                     | Pod DNS resolution policy                                                        | `ClusterFirst`                                       |
| hostNetwork                                   | Bind Pod ports to nodes                                                          | `false`                                              |
| image.repository                              | The repo where the image lives                                                   | `registry.gitlab.com/safesurfer/safesurfer-powerdns` |
| image.tag                                     | Specifies a tag of from the image to use                                         | `latest`                                             |
| image.pullPolicy                              | Pod container pull policy                                                        | `IfNotPresent`                                       |
| imagePullSecrets                              | References for the registry secrets to pull the container images in the Pod with | `[]`                                                 |
| nameOverride                                  | Expand the name of the chart                                                     | `""`                                                 |
| fullNameOverride                              | Create a FQDN for the app name                                                   | `""`                                                 |
| serviceAccount.create                         | Whether a serviceAccount should be created for the Pod to use                    | `false`                                              |
| serviceAccount.name                           | A name to give the servce account                                                | `nil`                                                |
| podAnnotations                                | Annotations to assign Pods                                                       | `{}`                                                 |
| podSecurityContext                            | Set a security context for the Pod                                               | `{}`                                                 |
| securityContext.readOnlyRootFilesystem        | Mount container filesytem as read only                                           | `true`                                               |
| securityContext.runAsNonRoot                  | Don't allow the container in the Pod to run as root                              | `true`                                               |
| securityContext.runAsUser                     | The user ID to run the container in the Pod as                                   | `250`                                                |
| securityContext.runAsGroup                    | The group ID to run the container in the Pod as                                  | `250`                                                |
| service.type                                  | The service type to create                                                       | `ClusterIP`                                          |
| service.port                                  | The port to bind the app on and for the service to be set to                     | `53`                                                 |
| service.externalTrafficPolicy                 | The incoming external traffic policy                                             | `Cluster`                                            |
| service.tcpEnabled                            | Whether a tcp service should be created                                          | `false`                                              |
| ingress.enabled                               | Create an ingress manifests                                                      | `false`                                              |
| ingress.realIPHeader                          | A header to forward, which contains the real client IP address                   | `""`                                                 |
| ingress.annotations                           | Set annotations for the ingress manifest                                         | `{}`                                                 |
| ingress.hosts                                 | The hosts which the ingress endpoint should be accessed from                     | `[]`                                                 |
| ingress.tls                                   | References to TLS secrets                                                        | `[]`                                                 |
| resources                                     | Limits and requests for the Pods                                                 | `{}`                                                 |
| autoscaling.enabled                           | Enable autoscaling for the deployment                                            | `false`                                              |
| autoscaling.minReplicas                       | The minimum amount of Pods to run                                                | `1`                                                  |
| autoscaling.maxReplicas                       | The maximum amount of Pods to run                                                | `1`                                                  |
| autoscaling.targetCPUUtilizationPercentage    | The individual Pod CPU amount until autoscaling occurs                           | `80`                                                 |
| autoscaling.targetMemoryUtilizationPercentage | The individual Pod Memory amount until autoscaling occurs                        |                                                      |
| nodeSelector                                  | Declare the node labels for Pod scheduling                                       | `{}`                                                 |
| tolerations                                   | Declare the toleration labels for Pod scheduling                                 | `[]`                                                 |
| affinity                                      | Declare the affinity settings for the Pod scheduling                             | `{}`                                                 |
