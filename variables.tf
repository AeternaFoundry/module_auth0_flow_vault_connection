variable "flow_vault_connections" {
  description = <<EOT
Map of flow_vault_connections, attributes below
Required:
    - app_id
    - name
Optional:
    - account_name
    - environment
    - fingerprint
    - setup
EOT

  type = map(object({
    app_id       = string
    name         = string
    account_name = optional(string)
    environment  = optional(string)
    fingerprint  = optional(string)
    setup        = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.flow_vault_connections : (
        contains(["ACTIVECAMPAIGN", "AIRTABLE", "AUTH0", "BIGQUERY", "CLEARBIT", "DOCUSIGN", "GOOGLE_SHEETS", "HTTP", "HUBSPOT", "JWT", "MAILCHIMP", "MAILJET", "PIPEDRIVE", "SALESFORCE", "SENDGRID", "SLACK", "STRIPE", "TELEGRAM", "TWILIO", "WHATSAPP", "ZAPIER"], v.app_id)
      )
    ])
    error_message = "must be one of: \"ACTIVECAMPAIGN\", \"AIRTABLE\", \"AUTH0\", \"BIGQUERY\", \"CLEARBIT\", \"DOCUSIGN\", \"GOOGLE_SHEETS\", \"HTTP\", \"HUBSPOT\", \"JWT\", \"MAILCHIMP\", \"MAILJET\", \"PIPEDRIVE\", \"SALESFORCE\", \"SENDGRID\", \"SLACK\", \"STRIPE\", \"TELEGRAM\", \"TWILIO\", \"WHATSAPP\", \"ZAPIER\""
  }
}

