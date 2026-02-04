# SQL (DuckDB) — Homework 1

Esta seção contém a análise em SQL do Homework 1 do Data Engineering Zoomcamp 2026.

As consultas foram executadas localmente utilizando DuckDB, que permite consultas analíticas diretamente sobre arquivos Parquet, sem a necessidade de um data warehouse em cloud. Essa abordagem evita custos desnecessários e mantém os mesmos conceitos analíticos usados em ferramentas como BigQuery ou Athena.

---

## Fontes de dados

- **Green Taxi Trips (Novembro de 2025)**  
  Arquivo: `green_tripdata_2025-11.parquet`  
  Fonte: https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page

- **Tabela de zonas de táxi**  
  Arquivo: `taxi_zone_lookup.csv`  
  Fonte: https://github.com/DataTalksClub/nyc-tlc-data

> Observação: os arquivos de dados não são versionados no repositório.

---

## Como executar as consultas

Baixe os dados localmente:

```bash
mkdir -p data
cd data
wget https://d37ci6vzurychx.cloudfront.net/trip-data/green_tripdata_2025-11.parquet
wget https://github.com/DataTalksClub/nyc-tlc-data/releases/download/misc/taxi_zone_lookup.csv
cd ..

