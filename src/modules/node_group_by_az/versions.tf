terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      # retrieve launch template by ID starts at 3.21.0
      # update_config starts at 3.56
      # Windows support starts at 4.48 https://github.com/hashicorp/terraform-provider-aws/blob/main/CHANGELOG.md#4480-december-19-2022
      # SSM parameter `insecure_value` starts at 5.8
      source  = "hashicorp/aws"
      version = ">= 5.8, < 6.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 2.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0"
    }
  }
}
