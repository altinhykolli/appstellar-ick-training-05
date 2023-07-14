data "aws_vpc" "this" {
  tags= {
    Environment = "dev"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-altin-devops-training"

  tags = {
    Name        = "altin devops training"
    Environment = "Dev"
  }
}

output "vpc_id" {
  value = data.aws_vpc.this.id
}