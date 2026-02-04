# Docker Compose — Comunicação entre containers (Q2)

Neste exercício foi analisado um arquivo `docker-compose.yaml` contendo dois serviços:
- PostgreSQL
- pgAdmin

## Conceito importante
Dentro de um ambiente Docker Compose, os containers se comunicam usando o nome do serviço como hostname.

O mapeamento de portas (`5433:5432`) expõe o banco para o host, mas **não altera a comunicação interna entre containers**.

## Resposta
Para o pgAdmin se conectar ao PostgreSQL, deve ser usado:

- **Hostname:** `postgres`
- **Porta:** `5432`
