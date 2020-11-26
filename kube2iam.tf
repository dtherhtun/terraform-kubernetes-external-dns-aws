data "aws_iam_policy_document" "kube2iam" {
  version = "2012-10-17"

  statement {
    effect = "Allow"

    actions = [
      "sts:AssumeRole",
    ]

    resources = ["*"]
  }
}
