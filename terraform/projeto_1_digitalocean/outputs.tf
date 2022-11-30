output "droplet_ip" {
  value = digitalocean_droplet.maquina_labs_tf.ipv4_address
}

output "droplet_size" {
  value = digitalocean_droplet.maquina_labs_tf.size
}