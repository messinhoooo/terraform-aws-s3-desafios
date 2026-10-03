provider "aws" {
    region = var.aws_region
}

resource "aws_s3_bucket" "meu-teste-emersaoo" {
    bucket = "meu-bucket-terras-0800"
    tags = {
      "Name" = "Bucket demo terraform"
      "Environment" = var.ambiente_dev
      "Project" = "Projeto bucket 1"
      "Owner" = var.proprietario
      "CostCenter" = "0800"
      "Application" = "testes-de-gratis"
      "Team" = "Brasil"
      "Departament" = "estudantil"
    
    }
}

resource "aws_s3_object" "bem_vindo_1" {
    bucket = aws_s3_bucket.meu-teste-emersaoo.id
    key = "bem_vindo.txt"
    content = "Olá Terraform e testes do copilot meu terras-0800"  
}


resource "aws_s3_bucket" "meu-bucket-copilot-02" {
    bucket = "meu-bucket-copilot-testes-12345"
    tags = {
      "Name" = "Bucket demo copilot"
      "Environment" = "Homologação"
      "Project" = "Projeto bucket 02"
      "Owner" = "Emerson"
      "CostCenter" = "0800-02"
      "Application" = "testes-de-gratis-02"
      "Team" = "Brasil-02"
      "Departament" = "estudantil-02"
    
    }
 }

resource "aws_s3_object" "bem_vindo_2" {
    bucket = aws_s3_bucket.meu-bucket-copilot-02.id
    key = "bem_vindo 2.txt"
    content = "Olá Terraform e testes do copilot-testes-12345"  
}


resource "aws_s3_bucket" "meu-bucket-copilot-03" {
    bucket = "meu-bucket-copilot-testes-6789"
    tags = {
      "Name" = "Bucket demo copilot"
      "Environment" = "Produção"
      "Project" = "Projeto bucket 03"
      "Owner" = "Emerson"
      "CostCenter" = "0800-03"
      "Application" = "testes-de-gratis-03"
      "Team" = "Brasil-03"
      "Departament" = "estudantil-03"
      }
      
    }

resource "aws_s3_object" "bem_vindo_3" {
    bucket = aws_s3_bucket.meu-bucket-copilot-03.id
    key = "bem_vindo 3.txt"
    content = "Olá Terraform e testes do copilot 6789"
  
}

