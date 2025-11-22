output "instance_id" {
  description = "ID созданного экземпляра VM"
  value       = yandex_compute_instance.testvm.id
}