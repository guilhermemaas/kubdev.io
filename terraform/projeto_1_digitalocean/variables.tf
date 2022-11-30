variable "token" {
  default = ""
  description = "Token de acesso a Digital Ocean"
}

variable "nome_droplet" {
  #default = "maquina_labs_tf"
  description = "Nome da maquina que está sendo criada"
}

variable "regiao" {
  #default = "nyc3"
  description = "Região padrão na Digital Ocean"
}