output "pb_sn" {
  value = aws_subnet.kobesubnet.id
}
  
output "pb_sg" {
  value = aws_security_group.kobesg.id
  
}