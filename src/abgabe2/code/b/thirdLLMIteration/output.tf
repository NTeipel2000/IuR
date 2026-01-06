output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}

output "sns_topic_arn" {
  value = aws_sns_topic.email_topic.arn
}
