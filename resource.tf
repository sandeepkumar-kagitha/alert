resource "newrelic_alert_channel" "email_alert" {
  name="email"
  type = "email"
  config {
    recipients = "skumarreddy@newrelic.com"
    include_json_attachment = true
  }
  
}

resource "newrelic_alert_policy" "email_alert" {
  name = "email"
  
}

# resource "newrelic_alert_condition" "email" {

#   policy_id = newrelic_alert_policy.email_alert.id
#   name        = "email"
#   type        = "apm_app_metric"
#   entities    = [data.newrelic_entity.app.application_id]
#   runbook_url = "https://www.example.com"
#   condition_scope = "application"

#   term {
#     duration      = 5
#     operator      = "above"
#     priority      = "critical"
#     threshold     = "0.75"
#     time_function = "all"
#   }
# }



