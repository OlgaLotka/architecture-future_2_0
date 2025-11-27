variable "provider_token" {
  description = "Токен"
  type        = string
  sensitive   = true
}

variable "provider_cloud_id" {
  description = "ид проэта"
  type        = string
  default     = "b1gct8srul0p5q0aus4g"
}

variable "provider_folder_id" {
  description = "Ид папки"
  type        = string
  default     = "b1g0o53qtbnfgsk45mis"
}

variable "bucket" {
  description = "Имя бакета"
  type        = string
  default     = "loa"
}



