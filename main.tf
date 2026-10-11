resource "google_compute_reservation" "compute_reservations" {
  for_each = var.compute_reservations

  name                          = each.value.name
  zone                          = each.value.zone
  delete_at_time                = each.value.delete_at_time
  deletion_policy               = each.value.deletion_policy
  description                   = each.value.description
  project                       = each.value.project
  specific_reservation_required = each.value.specific_reservation_required

  specific_reservation {
    count = each.value.specific_reservation.count
    dynamic "instance_properties" {
      for_each = each.value.specific_reservation.instance_properties != null ? [each.value.specific_reservation.instance_properties] : []
      content {
        dynamic "guest_accelerators" {
          for_each = instance_properties.value.guest_accelerators != null ? instance_properties.value.guest_accelerators : []
          content {
            accelerator_count = guest_accelerators.value.accelerator_count
            accelerator_type  = guest_accelerators.value.accelerator_type
          }
        }
        dynamic "local_ssds" {
          for_each = instance_properties.value.local_ssds != null ? instance_properties.value.local_ssds : []
          content {
            disk_size_gb = local_ssds.value.disk_size_gb
            interface    = local_ssds.value.interface
          }
        }
        machine_type     = instance_properties.value.machine_type
        min_cpu_platform = instance_properties.value.min_cpu_platform
      }
    }
    source_instance_template = each.value.specific_reservation.source_instance_template
  }

  dynamic "delete_after_duration" {
    for_each = each.value.delete_after_duration != null ? [each.value.delete_after_duration] : []
    content {
      nanos   = delete_after_duration.value.nanos
      seconds = delete_after_duration.value.seconds
    }
  }

  dynamic "params" {
    for_each = each.value.params != null ? [each.value.params] : []
    content {
      resource_manager_tags = params.value.resource_manager_tags
    }
  }

  dynamic "reservation_sharing_policy" {
    for_each = each.value.reservation_sharing_policy != null ? [each.value.reservation_sharing_policy] : []
    content {
      service_share_type = reservation_sharing_policy.value.service_share_type
    }
  }

  dynamic "share_settings" {
    for_each = each.value.share_settings != null ? [each.value.share_settings] : []
    content {
      dynamic "project_map" {
        for_each = share_settings.value.project_map != null ? share_settings.value.project_map : []
        content {
          id         = project_map.value.id
          project_id = project_map.value.project_id
        }
      }
      share_type = share_settings.value.share_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

