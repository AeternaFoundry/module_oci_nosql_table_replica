output "nosql_table_replicas_id" {
  description = "Map of id values across all nosql_table_replicas, keyed the same as var.nosql_table_replicas except keys with no id are omitted"
  value       = { for k, v in oci_nosql_table_replica.nosql_table_replicas : k => v.id if v.id != null && length(v.id) > 0 }
}
output "nosql_table_replicas_compartment_id" {
  description = "Map of compartment_id values across all nosql_table_replicas, keyed the same as var.nosql_table_replicas except keys with no compartment_id are omitted"
  value       = { for k, v in oci_nosql_table_replica.nosql_table_replicas : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "nosql_table_replicas_max_read_units" {
  description = "Map of max_read_units values across all nosql_table_replicas, keyed the same as var.nosql_table_replicas except keys with no max_read_units are omitted"
  value       = { for k, v in oci_nosql_table_replica.nosql_table_replicas : k => v.max_read_units if v.max_read_units != null }
}
output "nosql_table_replicas_max_write_units" {
  description = "Map of max_write_units values across all nosql_table_replicas, keyed the same as var.nosql_table_replicas except keys with no max_write_units are omitted"
  value       = { for k, v in oci_nosql_table_replica.nosql_table_replicas : k => v.max_write_units if v.max_write_units != null }
}
output "nosql_table_replicas_region" {
  description = "Map of region values across all nosql_table_replicas, keyed the same as var.nosql_table_replicas except keys with no region are omitted"
  value       = { for k, v in oci_nosql_table_replica.nosql_table_replicas : k => v.region if v.region != null && length(v.region) > 0 }
}
output "nosql_table_replicas_table_name_or_id" {
  description = "Map of table_name_or_id values across all nosql_table_replicas, keyed the same as var.nosql_table_replicas except keys with no table_name_or_id are omitted"
  value       = { for k, v in oci_nosql_table_replica.nosql_table_replicas : k => v.table_name_or_id if v.table_name_or_id != null && length(v.table_name_or_id) > 0 }
}

