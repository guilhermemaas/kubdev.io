resource "digitalocean_droplet" "maquina_labs_tf" {
  image    = "ubuntu-20-04-x64"
  name     = var.nome_droplet
  region   = var.regiao
  size     = "s-1vcpu-1gb"
  ssh_keys = [data.digitalocean_ssh_key.aula_terraform.id]
  tags = [
    "desenvolvimento"
  ]
}

resource "digitalocean_firewall" "firewall_terraform_lab" {
  name = "firewall-terraform-lab"

  droplet_ids = [digitalocean_droplet.maquina_labs_tf.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["206.84.222.73"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "icmp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

}