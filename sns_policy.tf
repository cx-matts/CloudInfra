resource "aws_sns_topic" "test_sns_1" {
  name = "my-topic-with-policy"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "*",
      "Principal": {
        "AWS": "*"
    },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

}
