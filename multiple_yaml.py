import pulumi
import pulumi_kubernetes as k8s
from pulumi_kubernetes.yaml import ConfigGroup

# Create resources from standard Kubernetes nodejs-mariadb YAML example.
nodejs_mariadb = ConfigGroup(
    "nodejs-mariadb",
    files=["nodejs_mariadb/*.yaml"])

# Export the private cluster IP address of the frontend.
frontend = nodejs_mariadb.get_resource("v1/Service", "users")
pulumi.export(name="privateIp", value=frontend.spec.cluster_ip)