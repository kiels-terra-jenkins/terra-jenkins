output "instance1" {
  description = "First set of EC2s"
  value       = aws_instance.i1
  sensitive   = true
}