# Data Engineering Zoomcamp 2026 - Homework 1

Este repositório contém minha solução do Homework 1 do Data Engineering Zoomcamp 2026.

## Stack
- Docker (ambiente reprodutível)
- SQL com DuckDB (análise local de Parquet)
- Terraform (AWS Free Tier: S3 como exemplo de Infra as Code)

## Estrutura
- `docker/` — evidências e comandos do Q1/Q2
- `sql/` — queries para responder Q3–Q6
- `terraform/` — infraestrutura mínima na AWS (S3), com `destroy` ao final

## Observação sobre custos
Para evitar cobrança, as análises SQL pesadas são feitas localmente (DuckDB). A AWS é usada apenas para demonstrar Infra as Code no Free Tier.
