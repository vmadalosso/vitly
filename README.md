# Vitly - URL Shortener API

## Seção 1 - Documentação de Planejamento

### a) Descrição do Projeto, Seus Objetivos e Requisitos

O projeto **Vitly** é uma API para encurtamento de URLs desenvolvida em **Node.js** com **TypeScript**, utilizando o framework **Fastify** para o backend, e bancos de dados **Redis** e **PostgreSQL** para armazenamento e cache. A aplicação oferece uma solução leve e eficiente para criar URLs curtas, permitindo o redirecionamento rápido e a gestão de links.

**Objetivos principais:**
- Criar uma API robusta para encurtamento e redirecionamento de URLs.
- Utilizar boas práticas de desenvolvimento com TypeScript e Fastify.
- Implementar uma infraestrutura que permita integração e entrega contínua, com deploy containerizado.
- Garantir que o projeto seja modular e facilmente escalável.

**Requisitos funcionais e técnicos:**
- Serviço de criação de URLs encurtadas e redirecionamento para as URLs originais.
- Persistência de dados em PostgreSQL e cache rápido em Redis.
- Código escrito em TypeScript com tipagem estática.
- Infraestrutura baseada em containers para facilitar o deploy.
- Pipeline de integração contínua para garantir qualidade e automatização.

Foi implementado um teste básico simples como prova de conceito da estrutura de testes, que será expandida em fases futuras para garantir maior cobertura e qualidade do código.

---

### b) Plano de Integração Contínua

O pipeline de Integração Contínua (CI) foi configurado utilizando o **GitHub Actions**. Ele executa as seguintes etapas a cada push ou pull request na branch principal:

- Checkout do código: ação para clonar o repositório.
- Configuração do ambiente Node.js: instalação da versão 20 do Node.js.
- Instalação das dependências: comando `npm ci` para instalação limpa.
- Compilação do TypeScript: verificação do código com `npx tsc --noEmit` para detectar erros de tipagem.
- Execução do script de setup: rodar o script `setup.ts` para validar parte do funcionamento do backend e conexão com a infraestrutura.
- **Execução de testes automatizados básicos**, implementados com o Vitest.

No momento, o pipeline inclui apenas um teste simples para garantir o funcionamento da estrutura de testes, e testes mais elaborados serão desenvolvidos e integrados na próxima fase do projeto, com foco em entrega contínua e qualidade de código.

---

### c) Especificação Detalhada da Infraestrutura Necessária

Para provisionamento e orquestração inicial da infraestrutura, utilizamos o Docker Compose, cuja configuração está disponível no arquivo [`docker-compose.yml`](https://github.com/vmadalosso/vitly/blob/main/docker-compose.yml) do repositório.

Este arquivo define os serviços PostgreSQL e Redis, incluindo suas configurações básicas de ambiente e portas.

Na próxima fase do projeto, está planejada a utilização de ferramentas de Infraestrutura como Código mais robustas, como Terraform ou CloudFormation, para automação completa do provisionamento em nuvem, além da containerização e orquestração via Docker e Kubernetes, conforme requisitos da fase 2.

## Seção 2 - Pipeline de Integração Contínua

### a) Configuração de um Repositório de Código

[https://github.com/vmadalosso/vitly](https://github.com/vmadalosso/vitly)

---

### b) Implementação de um Pipeline de CI usando GitHub Actions

O pipeline de integração contínua está configurado no arquivo [`.github/workflows/ci.yml`](https://github.com/vmadalosso/vitly/blob/main/.github/workflows/ci.yml) do repositório, que executa as etapas descritas na Seção 1b.

## Seção 3 - Scripts de Infraestrutura como Código
### a) Scripts para Provisionamento de Infraestrutura a partir da Ferramenta

Utilizamos o **Docker Compose** para o provisionamento inicial da infraestrutura, configurado no arquivo [`docker-compose.yml`](https://github.com/vmadalosso/vitly/blob/main/docker-compose.yml).

Futuramente, está prevista a adoção de ferramentas de Infraestrutura como Código mais avançadas para maior automação e escalabilidade.

## Testes Automatizados

Foi criado um teste básico para validar a estrutura inicial de testes utilizando o **Vitest**. O arquivo de teste está localizado em:

```/tests/basic.test.ts ```

Este teste será a base para a implementação de testes mais robustos, que serão integrados nas próximas fases do projeto.
---
Obrigado por acompanhar o projeto Vitly!

Feito com ❤️ & ⏩ por Vitor Madalosso
