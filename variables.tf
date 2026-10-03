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
  default     = "Emerson"
}