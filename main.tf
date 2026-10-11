resource "oci_nosql_table_replica" "nosql_table_replicas" {
  for_each = var.nosql_table_replicas

  region           = each.value.region
  table_name_or_id = each.value.table_name_or_id
  compartment_id   = each.value.compartment_id
  max_read_units   = each.value.max_read_units
  max_write_units  = each.value.max_write_units

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

