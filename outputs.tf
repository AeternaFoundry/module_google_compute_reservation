output "compute_reservations_id" {
  description = "Map of id values across all compute_reservations, keyed the same as var.compute_reservations except keys with no id are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_reservations_block_names" {
  description = "Map of block_names values across all compute_reservations, keyed the same as var.compute_reservations except keys with no block_names are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => v.block_names if v.block_names != null && length(v.block_names) > 0 }
}
output "compute_reservations_commitment" {
  description = "Map of commitment values across all compute_reservations, keyed the same as var.compute_reservations except keys with no commitment are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => v.commitment if v.commitment != null && length(v.commitment) > 0 }
}
output "compute_reservations_creation_timestamp" {
  description = "Map of creation_timestamp values across all compute_reservations, keyed the same as var.compute_reservations except keys with no creation_timestamp are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => v.creation_timestamp if v.creation_timestamp != null && length(v.creation_timestamp) > 0 }
}
output "compute_reservations_delete_after_duration" {
  description = "Map of delete_after_duration values across all compute_reservations, keyed the same as var.compute_reservations except keys with no delete_after_duration are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => one(v.delete_after_duration) if v.delete_after_duration != null && length(v.delete_after_duration) > 0 }
}
output "compute_reservations_delete_at_time" {
  description = "Map of delete_at_time values across all compute_reservations, keyed the same as var.compute_reservations except keys with no delete_at_time are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => v.delete_at_time if v.delete_at_time != null && length(v.delete_at_time) > 0 }
}
output "compute_reservations_deletion_policy" {
  description = "Map of deletion_policy values across all compute_reservations, keyed the same as var.compute_reservations except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_reservations_description" {
  description = "Map of description values across all compute_reservations, keyed the same as var.compute_reservations except keys with no description are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_reservations_kind" {
  description = "Map of kind values across all compute_reservations, keyed the same as var.compute_reservations except keys with no kind are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "compute_reservations_linked_commitments" {
  description = "Map of linked_commitments values across all compute_reservations, keyed the same as var.compute_reservations except keys with no linked_commitments are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => v.linked_commitments if v.linked_commitments != null && length(v.linked_commitments) > 0 }
}
output "compute_reservations_name" {
  description = "Map of name values across all compute_reservations, keyed the same as var.compute_reservations except keys with no name are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_reservations_params" {
  description = "Map of params values across all compute_reservations, keyed the same as var.compute_reservations except keys with no params are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => one(v.params) if v.params != null && length(v.params) > 0 }
}
output "compute_reservations_project" {
  description = "Map of project values across all compute_reservations, keyed the same as var.compute_reservations except keys with no project are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_reservations_reservation_sharing_policy" {
  description = "Map of reservation_sharing_policy values across all compute_reservations, keyed the same as var.compute_reservations except keys with no reservation_sharing_policy are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => one(v.reservation_sharing_policy) if v.reservation_sharing_policy != null && length(v.reservation_sharing_policy) > 0 }
}
output "compute_reservations_resource_status" {
  description = "Map of resource_status values across all compute_reservations, keyed the same as var.compute_reservations except keys with no resource_status are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => v.resource_status if v.resource_status != null && length(v.resource_status) > 0 }
}
output "compute_reservations_satisfies_pzs" {
  description = "Map of satisfies_pzs values across all compute_reservations, keyed the same as var.compute_reservations except keys with no satisfies_pzs are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => v.satisfies_pzs if v.satisfies_pzs != null }
}
output "compute_reservations_self_link" {
  description = "Map of self_link values across all compute_reservations, keyed the same as var.compute_reservations except keys with no self_link are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "compute_reservations_share_settings" {
  description = "Map of share_settings values across all compute_reservations, keyed the same as var.compute_reservations except keys with no share_settings are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => one(v.share_settings) if v.share_settings != null && length(v.share_settings) > 0 }
}
output "compute_reservations_specific_reservation" {
  description = "Map of specific_reservation values across all compute_reservations, keyed the same as var.compute_reservations except keys with no specific_reservation are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => one(v.specific_reservation) if v.specific_reservation != null && length(v.specific_reservation) > 0 }
}
output "compute_reservations_specific_reservation_required" {
  description = "Map of specific_reservation_required values across all compute_reservations, keyed the same as var.compute_reservations except keys with no specific_reservation_required are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => v.specific_reservation_required if v.specific_reservation_required != null }
}
output "compute_reservations_status" {
  description = "Map of status values across all compute_reservations, keyed the same as var.compute_reservations except keys with no status are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => v.status if v.status != null && length(v.status) > 0 }
}
output "compute_reservations_zone" {
  description = "Map of zone values across all compute_reservations, keyed the same as var.compute_reservations except keys with no zone are omitted"
  value       = { for k, v in google_compute_reservation.compute_reservations : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

