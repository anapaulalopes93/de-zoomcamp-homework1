# Data Engineering Zoomcamp 2026 - Homework 1

## Docker, SQL e Terraform (AWS Free Tier)

Este repositório contém minha solução para o **Homework 1** do **Data Engineering Zoomcamp 2026**, com foco na construção de uma base sólida em engenharia de dados.

O objetivo deste trabalho não foi apenas responder às questões do homework, mas **entender e aplicar os conceitos fundamentais**, documentando cada etapa de forma clara e reproduzível.

---

## 🎯 Objetivos do Homework

- Compreender o uso de **Docker** para ambientes isolados e reproduzíveis
- Trabalhar com **SQL analítico** sobre dados reais do NYC Taxi
- Entender **orquestração e comunicação entre containers**
- Aplicar conceitos de **Infraestrutura como Código (IaC)** com Terraform
- Utilizar cloud de forma **consciente e econômica** (AWS Free Tier)

---

## 🧱 Stack utilizada

- **Docker** — execução de ambientes isolados
- **Docker Compose** — comunicação entre serviços
- **DuckDB** — SQL analítico local sobre arquivos Parquet
- **Terraform** — Infraestrutura como Código
- **AWS (Free Tier)** — exemplo de cloud para IaC (S3)
- **Git + GitHub (SSH)** — versionamento e colaboração

---

## 📁 Estrutura do repositório

de-zoomcamp-homework1/

├── docker/ # Evidências do uso de Docker (Q1)
├── docker-compose/ # Conceitos de rede entre containers (Q2)
├── sql/ # Análise SQL com DuckDB (Q3–Q6)
├── terraform/ # Infraestrutura como Código com AWS (Q7)
└── README.md # Documentação principal


---

## 🐳 Docker

Foi utilizada a imagem oficial `python:3.13` para verificar a versão do `pip` em um ambiente isolado.

Este passo reforça o conceito de que:
- **imagens são templates**
- **containers são instâncias descartáveis**
- o ambiente do container é independente do sistema operacional local

📂 Evidência: pasta `docker/`

---

## 🔗 Docker Compose

Foi analisado um arquivo `docker-compose.yaml` contendo os serviços **PostgreSQL** e **pgAdmin**.

Aprendizado principal:
- Containers se comunicam pelo **nome do serviço**
- O mapeamento de portas (`host:container`) não afeta a comunicação interna

📌 Resposta correta:
- Host: `postgres`
- Porta: `5432`

📂 Evidência: pasta `docker-compose/`

---

## 📊 SQL Analítico (DuckDB)

As análises SQL foram realizadas localmente utilizando **DuckDB**, que permite consultas analíticas diretamente sobre arquivos Parquet, sem necessidade de um data warehouse em cloud.

Essa abordagem:
- evita custos desnecessários
- mantém os mesmos conceitos usados em BigQuery ou Athena
- garante reprodutibilidade

As consultas responderam às questões:
- Q3 — viagens com curta distância
- Q4 — maior distância por dia
- Q5 — zona com maior faturamento em um dia específico
- Q6 — maior gorjeta por zona de destino

📂 Evidência: pasta `sql/`

---

## ☁️ Terraform e AWS (Free Tier)

Os conceitos de **Infraestrutura como Código** foram aplicados utilizando Terraform, com foco no workflow padrão:

1. `terraform init`
2. `terraform apply`
3. `terraform destroy`

A AWS foi utilizada apenas como **exemplo de cloud**, criando recursos mínimos (S3) e sempre destruindo a infraestrutura após o uso, respeitando os limites do **Free Tier**.

📂 Evidência: pasta `terraform/`

---

## 🧠 Principais aprendizados

- Ambientes isolados são essenciais para reprodutibilidade
- SQL analítico vai além de CRUD e exige modelagem mental correta
- Cloud deve ser usada com **intencionalidade**, não por padrão
- Infraestrutura também é código e deve ser versionada
- Documentação clara faz parte do trabalho do engenheiro de dados

---

## 📌 Observações finais

Este repositório faz parte da minha jornada de aprendizado em **Engenharia de Dados**, com foco em compreender profundamente os fundamentos antes de avançar para pipelines mais complexos, orquestração e data warehouses.

