output "public_subnets" {

  value = [
    aws_subnet.public_a.id,
    aws_subnet.public_b.id,
    aws_subnet.public_c.id
  ]

}

output "private_subnets" {

  value = [
    aws_subnet.private_a.id,
    aws_subnet.private_b.id,
    aws_subnet.private_c.id
  ]

}

output "data_subnets" {

  value = [
    aws_subnet.data_a.id,
    aws_subnet.data_b.id,
    aws_subnet.data_c.id
  ]

}
