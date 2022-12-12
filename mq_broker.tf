resource "aws_mq_broker" "example" {
  broker_name = "example"
  publicly_accessible = true

  configuration {
    id       = aws_mq_configuration.test.id
    revision = aws_mq_configuration.test.latest_revision
  }

  engine_type        = "ActiveMQ"
  engine_version     = "5.15.9"
  storage_type       = "ebs"
  host_instance_type = "mq.m5.large"
  security_groups    = [aws_security_group.test.id]

  user {
    username = "ExampleUser"
    password = "MindTheGap"
  }
}
