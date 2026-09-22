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
- **Item Atendimento** — tabela associativa que registra quais produtos foram utilizados em cada atendimento.

### Diagrama ER em Mermaid

```mermaid
erDiagram
    CLIENTE ||--o{ ANIMAL : possui
    CLIENTE ||--o{ ATENDIMENTO : realiza
    ANIMAL ||--o{ ATENDIMENTO : recebe
    ATENDENTE ||--o{ ATENDIMENTO : registra
    VETERINARIO ||--o{ ATENDIMENTO : responsavel
    ATENDIMENTO ||--o{ ITEM_ATENDIMENTO : utiliza
    PRODUTO ||--o{ ITEM_ATENDIMENTO : referencia

    CLIENTE {
        bigint id_cliente PK
        varchar nome
        varchar cpf UK
        varchar telefone
        varchar endereco
    }

    ANIMAL {
        bigint id_animal PK
        bigint id_cliente FK
        varchar nome
        varchar especie
        varchar raca
        varchar sexo
        date data_nascimento
    }

    ATENDENTE {
        bigint id_atendente PK
        varchar nome
        varchar cpf UK
        varchar telefone
    }

    VETERINARIO {
        bigint id_veterinario PK
        varchar nome
        varchar cpf UK
        varchar crmv UK
        varchar especialidade
        varchar telefone
    }

    PRODUTO {
        bigint id_produto PK
        varchar nome
        varchar tipo
        varchar marca
        text descricao
        numeric valor_compra
        integer estoque
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

    ITEM_ATENDIMENTO {
        bigint id_item PK
        bigint id_atendimento FK
        bigint id_produto FK
        numeric valor_utilizado
        integer quantidade
    }
```
