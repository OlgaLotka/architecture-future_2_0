terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"

}

provider "yandex" {
  token = var.provider_token
  cloud_id = var.provider_cloud_id
  folder_id = var.provider_folder_id
  zone = "ru-central1-a"
}

data "yandex_compute_image" "ubuntu" {
  family = var.yandex_compute_image_family
}


resource "yandex_compute_disk" "testvm" {
  name = var.yandex_compute_disk_name
  type = var.yandex_compute_disk_type
  zone = var.yandex_compute_disk_zone
  image_id = data.yandex_compute_image.ubuntu.id
  size = var.yandex_compute_disk_size
}

resource "yandex_compute_instance" "testvm" {
  name = var.yandex_compute_instance_name
  zone = var.yandex_compute_instance_zone

  resources {
    cores  = var.cores
    memory = var.memory
  }

  boot_disk {
    disk_id = yandex_compute_disk.testvm.id
  }

  network_interface {
    subnet_id = "e9b86f5av2jh8p9nav7g"
    nat       = true
  }

  /*metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }*/
}
