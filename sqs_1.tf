resource "aws_sqs_queue" "Test_q" {
  name = "SQS_1"

    policy = <<EOF
{
  "Version": "2012-10-17",
  "Id": "Queue1_Policy_UUID",
  "Statement": [{
      "Sid":"Queue1_AnonymousAccess_AllActions_AllowlistIP",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "sqs:*",
      "Resource": "arn:aws:sqs:*:111122223333:queue1",
      "Condition" : {
        "IpAddress" : {
            "aws:SourceIp":"192.168.143.0/24"
        }
      }
  }]
}
EOF
}

