# Clínica Veterinária — Banco de Dados PostgreSQL

### [Link do protótipo de tela principal](https://veterinario-mocha.vercel.app/)

## 1. Apresentação do projeto

### Tema
Sistema de banco de dados para uma **Clínica Veterinária**, desenvolvido em PostgreSQL.

### Objetivo geral
Modelar e implementar um banco de dados capaz de armazenar e relacionar informações de **clientes, animais, atendentes, veterinários, produtos e atendimentos**, permitindo registrar consultas e os produtos utilizados em cada atendimento.

### Público-alvo
Clínicas veterinárias de pequeno e médio porte, atendentes, veterinários e responsáveis administrativos que precisam organizar os dados dos clientes, seus animais e os atendimentos realizados.

## 2. Modelo de dados relacional

O modelo utiliza as seguintes entidades:

- **Cliente** — responsável pelos animais.
- **Animal** — paciente pertencente a um cliente.
- **Atendente** — funcionário que registra o atendimento.
- **Veterinário** — profissional responsável pelo atendimento.
- **Atendimento** — registro da consulta/procedimento.
- **Produto** — produto disponível na clínica.
- **Serviço** — serviços oferecidos pela clínica (como banho e tosa).
- **Item Atendimento** — tabela que associa os vários produtos a vários atendimentos, resolvendo N para N.

### Diagrama ER em Mermaid

```mermaid
erDiagram

    CLIENTE {
        bigint id_cliente PK
        varchar(100) nome
        varchar(14) cpf
        varchar(20) telefone
        varchar(200) endereco
        integer xp
        integer pontos
    }

    ANIMAL {
        bigint id_animal PK
        bigint id_cliente FK
        varchar(100) nome
        varchar(50) especie
        varchar(50) raca
        varchar(20) sexo
        date data_nascimento
    }

    ATENDIMENTO {
        bigint id_atendimento PK
        date data
        text descricao_consulta
        bigint id_atendente FK
        bigint id_cliente FK
        bigint id_animal FK
        bigint id_veterinario FK
    }

    ATENDENTE {
        bigint id_atendente PK
        varchar(100) nome
        varchar(14) cpf
        varchar(20) telefone
    }

    VETERINARIO {
        bigint id_veterinario PK
        varchar(100) nome
        varchar(14) cpf
        varchar(30) crmv
        varchar(100) especialidade
        varchar(20) telefone
    }

    PRODUTO {
        bigint id_produto PK
        varchar(100) nome
        varchar(50) tipo
        varchar(100) marca
        text descricao
        numeric(10,2) valor_compra
        integer estoque
        integer pontos
    }

    SERVICO {
        integer id_servico PK
        varchar(100) nome
        numeric(10,2) valor
        integer pontos
    }

    ITEM_ATENDIMENTO {
        bigint id_item PK
        bigint id_atendimento FK
        bigint id_produto FK
        numeric(10,2) valor_utilizado
        integer quantidade
        integer id_servico FK
    }


    CLIENTE ||--o{ ANIMAL : possui
    CLIENTE ||--o{ ATENDIMENTO : realiza
    ANIMAL ||--o{ ATENDIMENTO : recebe
    ATENDENTE ||--o{ ATENDIMENTO : registra
    VETERINARIO ||--o{ ATENDIMENTO : realiza

    ATENDIMENTO ||--o{ ITEM_ATENDIMENTO : possui
    PRODUTO ||--o{ ITEM_ATENDIMENTO : utilizado
    SERVICO ||--o{ ITEM_ATENDIMENTO : inclui
```
