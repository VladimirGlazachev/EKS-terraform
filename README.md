Variables are int the file variables.tf
terraform state will be saved in s3 bucket

Initialitisation of terrafrom :  terraform init -backend-config="backend.tfvars" -reconfigure

to deploy pod:
kubectl --kubeconfig /custom/path/kube.config  kubectl -n your_namespace apply -f deployment.yaml  



2.
the best option would be to use variables from k8s sercret
for Example:

resource "kubernetes_secret" "secrets_data" {
  metadata {
    name = "db-passwd"
  }

  data = {
    username = "admin"
    password = "P4ssw0rd"
  }

  type = "kubernetes.io/basic-auth"
}

terraform import kubernetes_secret.secrets_data default/my-secret
