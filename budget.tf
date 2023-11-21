resource "aws_budgets_budget" "myBudget" {
  name         = "myBudget"
  budget_type  = "COST"
  limit_amount = "25"
  limit_unit   = "USD"
  time_unit    = "MONTHLY"
  notification {
    comparison_operator = "EQUAL_TO"
    threshold           = 50
    threshold_type      = "PERCENTAGE"
    notification_type   = "ACTUAL"
    subscriber_email_addresses = [
      "vietnh2202@gmail.com"
    ]
  }
}