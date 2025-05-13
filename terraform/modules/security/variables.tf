variable "key_ring_name" {
  description = "Name of the KMS key ring"
  type        = string
  default     = "my-key-ring"
}

variable "crypto_key_name" {
  description = "Name of the KMS crypto key"
  type        = string
  default     = "my-crypto-key"
}

variable "region" {
  description = "Region where the KMS key ring will be created"
  type        = string
  default     = "us-central1"
}

variable "rotation_period" {
  description = "Rotation period for the crypto key"
  type        = string
  default     = "30d"
}