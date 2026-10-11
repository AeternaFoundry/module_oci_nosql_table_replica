variable "nosql_table_replicas" {
  description = <<EOT
Map of nosql_table_replicas, attributes below
Required:
    - region
    - table_name_or_id
Optional:
    - compartment_id
    - max_read_units
    - max_write_units
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    region           = string
    table_name_or_id = string
    compartment_id   = optional(string)
    max_read_units   = optional(number)
    max_write_units  = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

