# Configurando o provider
provider "aws" {
  region                   = var.aws_region
  shared_credentials_files = var.credentials
  profile                  = "default" # Nome do perfil no arquivo credentials
}
