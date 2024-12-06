# data "archive_file" "lambda" {
#   type        = "zip"
#   source_dir  = "${path.module}/lambda/"
#   output_path = "${path.module}/tmp/lambda.zip"
# }

# resource "aws_lambda_function" "terraform_lambda_func" {
#   filename         = "${path.module}/tmp/lambda.zip"
#   function_name    = "test-lambda-function"
#   handler          = "main.lambda_handler"
#   role             = aws_iam_role.iam_for_lambda.arn
#   runtime          = "python3.11"
#   source_code_hash = data.archive_file.lambda.output_base64sha256
#   layers           = ["arn:aws:lambda:eu-west-2:336392948345:layer:AWSSDKPandas-Python311:12"]
# }