# Azure Data Lab CI/CD

## Visão Geral
Este projeto automatiza a criação e configuração de um ambiente de análise de dados no Azure, utilizando Databricks, Bicep, Docker e GitHub Actions para CI/CD.

## Pré-requisitos
- [Conta no Azure](https://azure.microsoft.com/)
- [Git](https://git-scm.com/) e [GitHub](https://github.com/)
- [Docker](https://www.docker.com/get-started)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)

## Instalação
1. Clone o repositório:
    ```bash
    git clone https://github.com/seu-usuario/seu-projeto.git
    cd seu-projeto
    ```
2. Configure suas credenciais do Azure:
    ```bash
    az login
    ```

## Configuração
1. Defina os parâmetros no arquivo `parameters.json`:
    ```json
    {
      "location": {
        "value": "East US"
      }
    }
    ```

2. Implante a infraestrutura:
    ```bash
    az deployment group create --resource-group MeuGrupoDeRecursos --template-file bicep/main.bicep --parameters @bicep/parameters.json
    ```

## Uso
1. Construa a imagem Docker:
    ```bash
    docker build -t meu-azure-datalab .
    ```
2. Execute o contêiner:
    ```bash
    docker run -p 8888:8888 meu-azure-datalab
    ```

## Contribuição
Contribuições são bem-vindas! Siga os passos abaixo:
- Faça um fork do projeto
- Crie um branch para sua feature (`git checkout -b minha-feature`)
- Faça o commit das suas mudanças (`git commit -m 'Minha nova feature'`)
- Envie um pull request
