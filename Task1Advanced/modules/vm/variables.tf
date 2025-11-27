variable "provider_token" {
  description = "Токен"
  type        = string
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

variable "yandex_compute_disk_size" {
  description = "Размер диска для VM"
  type        = number
  default     = 2
}

variable "yandex_compute_image_family" {
  description = "Образ"
  type        = string
  default     = "ubuntu-2204-lts"
}

variable "yandex_compute_disk_name" {
  description = "Имя диска"
  type        = string
  default     = "test-vm-disk"
}

variable "yandex_compute_disk_type" {
  description = "Тип диска"
  type        = string
  default     = "network-ssd"
}

variable "yandex_compute_disk_zone" {
  description = "Зона инстанса"
  type        = string
  default     = "ru-central1-a"
}

variable "yandex_compute_instance_name" {
  description = "Имя инстанса"
  type        = string
  default     = "test-vm"
}

variable "yandex_compute_instance_zone" {
  description = ""
  type        = string
  default     = "ru-central1-a"
}

variable "cores" {
  description = "Количество ядер"
  type        = number
  default     = 2
}

variable "memory" {
  description = "Размер памяти"
  type        = number
  default     = 2
}