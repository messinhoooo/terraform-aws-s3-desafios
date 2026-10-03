# ☁️ AWS S3 Infrastructure as Code (IaC) com Terraform

Este repositório contém a automação e gestão de infraestrutura de buckets e objetos no AWS S3 utilizando **Terraform**. O projeto foi desenvolvido de forma progressiva através de uma série de desafios práticos de IaC.

---

## 🛠️ Tecnologias Utilizadas

- **Terraform** (v1.x)
- **AWS S3** (Simple Storage Service)
- **AWS CLI** & **PowerShell**

---

## 🎯 Funcionalidades & O que foi feito

- **Criação de Múltiplos Buckets S3:** Provisionamento automatizado de buckets isolados com nomes globais e exclusivos (`meu-bucket-terras-0800`, `meu-bucket-copilot-testes-6789`, `meu-bucket-copilot-testes-12345`).
- **Upload de Ficheiros & Simulação de Diretórios:** Envio automático de ficheiros (`.txt`) e criação de estruturas de pastas internas utilizando dependências explícitas (`depends_on`).
- **Etiquetagem Corporativa (Tags):** Padronização de recursos com tags de governança empresarial (`Environment`, `Owner`, `Project`, `CostCenter`, `Team`, `Application`, `Departament`).
- **Gestão de Ciclo de Vida e Drifts:** Manipulação de alterações *in-place*, deteção de inconsistências entre a consola AWS e o ficheiro de estado (`terraform.tfstate`), e gestão de exclusão de recursos.
- **Parametrização:** Utilização de variáveis (`variables.tf`) para eliminar valores estáticos do código.

---

## 📁 Estrutura do Projeto

```text
.
├── main.tf           # Configuração dos buckets e objetos S3
├── variables.tf      # Declaração das variáveis do projeto
├── .gitignore        # Ficheiros ignorados pelo Git (estado do Terraform e credenciais)
└── README.md         # Documentação do projeto