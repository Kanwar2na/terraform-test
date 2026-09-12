terraform {
  required_version = ">= 1.0.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# Creates the sample.txt file with the specified content
resource "local_file" "sample" {
  filename = "${path.module}/sample.txt"
  content  = "Learning terraform"
}
