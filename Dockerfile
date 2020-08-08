FROM hashicorp/terraform

COPY main.tf /root/home/main.tf

COPY values.tfvars /root/home/values.tfvars

COPY variables.tf /root/home/variables.tf
