terraform {
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }
}

resource "aws_redshift_cluster" "this" {
  cluster_identifier  = var.name
  node_type           = "dc2.large"
  master_username     = "admin"
  master_password     = var.master_password
  cluster_type        = "single-node"
  skip_final_snapshot = true
  tags                = var.tags
}
