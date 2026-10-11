variable "onesubscription_ratecards_lookup" {
  description = <<EOT
Map of onesubscription_ratecards_lookup, attributes below
Required:
    - compartment_id
    - subscription_id
Optional:
    - part_number
    - time_from
    - time_to
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id  = string
    subscription_id = string
    part_number     = optional(string)
    time_from       = optional(string)
    time_to         = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

