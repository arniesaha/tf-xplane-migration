resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = var.vpcName
  }
}
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
}
output "vpc_id" {
  value       = aws_vpc.main.id
}
output "subnet_id" {
  value       = aws_subnet.main.id
}
variable "vpcName" {
  description = "VPC name"
  type        = string
}