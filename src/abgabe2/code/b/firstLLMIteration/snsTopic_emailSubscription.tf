resource "aws_sns_topic" "email_topic" {
  name = "webservice-email-topic"
}

resource "aws_sns_topic_subscription" "email_sub" {
  topic_arn = aws_sns_topic.email_topic.arn
  protocol  = "email"
  endpoint  = var.email_address
}

