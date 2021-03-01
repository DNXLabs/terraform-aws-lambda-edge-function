module "lambda_function" {
  source              = "git::https://github.com/DNXLabs/terraform-aws-lambda-edge-function?ref=0.0.1"
  execution_role_name = format(
    "app-%s-redirect-lambda-execution-role-%s",
    var.application,
    var.environment
  )
  function_name = format(
    "app-%s-redirect-%s-%s",
    var.application,
    var.environment,
    data.aws_region.current.name
  )
  function_description = "Function used to redirect requests."
  filename = format("../../lambda/%s-redirect.zip", var.application)
  handler = "index.handler"
  runtime = "nodejs12.x"
  environment_variables = var.environment_variables
  tags = {
    Application = var.application
    Environment = var.environment
    Automation  = "Terraform"
  }
}