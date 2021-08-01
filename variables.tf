variable "boot_volume_size_in_gbs" {
  default = null

  validation {
    condition     = can(var.boot_volume_size_in_gbs < 50)
    error_message = "The value of boot_volume_size_in_gbs must be greater than or equal to 50."
  }

  validation {
    condition     = can(var.boot_volume_size_in_gbs > 200)
    error_message = "The value of boot_volume_size_in_gbs must be less than or equal to 200 to remain in the free tier."
  }
}

variable "name" {
  type = string
}

variable "compartment_id" {
  type = string
}

variable "availability_domain" {
  type = string
}
