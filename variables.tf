variable "aws_region" {
  description = "Região da AWS"
  type        = string
  default     = "us-east-1"
}

variable "ambiente_dev" {
  description = "Ambiente de desenvolvimento"
  type        = string
  default     = "Dev"
}

variable "proprietario" {
  description = "Dono dos recursos"
  type        = string
  default     = "Emerson Menezes"
}

variable "bucket_01" {
description = "Bucket principal"
type = string
default = "meu-bucket-terras-0800"
}

variable "bucket_02" {
description = "Bucket homologacao"
type = string
default = "meu-bucket-copilot-testes-12345"
}

variable "bucket_03" {
description = "Bucket producao"
type = string
default = "meu-bucket-copilot-testes-6789"
}