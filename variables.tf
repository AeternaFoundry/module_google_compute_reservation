variable "compute_reservations" {
  description = <<EOT
Map of compute_reservations, attributes below
Required:
    - name
    - zone
    - specific_reservation (block):
        - count (required)
        - instance_properties (optional, block):
            - guest_accelerators (optional, block):
                - accelerator_count (required)
                - accelerator_type (required)
            - local_ssds (optional, block):
                - disk_size_gb (required)
                - interface (optional)
            - machine_type (required)
            - min_cpu_platform (optional)
        - source_instance_template (optional)
Optional:
    - delete_at_time
    - deletion_policy
    - description
    - project
    - specific_reservation_required
    - delete_after_duration (block):
        - nanos (optional)
        - seconds (optional)
    - params (block):
        - resource_manager_tags (optional)
    - reservation_sharing_policy (block):
        - service_share_type (optional)
    - share_settings (block):
        - project_map (optional, block):
            - id (required)
            - project_id (optional)
        - share_type (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                          = string
    zone                          = string
    delete_at_time                = optional(string)
    deletion_policy               = optional(string)
    description                   = optional(string)
    project                       = optional(string)
    specific_reservation_required = optional(bool)
    specific_reservation = object({
      count = number
      instance_properties = optional(object({
        guest_accelerators = optional(list(object({
          accelerator_count = number
          accelerator_type  = string
        })))
        local_ssds = optional(list(object({
          disk_size_gb = number
          interface    = optional(string)
        })))
        machine_type     = string
        min_cpu_platform = optional(string)
      }))
      source_instance_template = optional(string)
    })
    delete_after_duration = optional(object({
      nanos   = optional(number)
      seconds = optional(string)
    }))
    params = optional(object({
      resource_manager_tags = optional(map(string))
    }))
    reservation_sharing_policy = optional(object({
      service_share_type = optional(string)
    }))
    share_settings = optional(object({
      project_map = optional(list(object({
        id         = string
        project_id = optional(string)
      })))
      share_type = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.compute_reservations : (
        v.specific_reservation.count >= 1
      )
    ])
    error_message = "must be at least 1"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

