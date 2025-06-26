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

Foi implementado um teste básico simples como prova de conceito da estrutura de testes, que já serve de base para o projeto e poderá ser expandido conforme necessidade.

---

### b) Plano de Integração Contínua

O pipeline de Integração Contínua (CI) foi configurado utilizando o **GitHub Actions**. Ele executa as seguintes etapas a cada push ou pull request na branch principal:

- Checkout do código: ação para clonar o repositório.
- Configuração do ambiente Node.js: instalação da versão 20 do Node.js.
- Instalação das dependências: comando `npm ci` para instalação limpa.
- Compilação do TypeScript: verificação do código com `npx tsc --noEmit` para detectar erros de tipagem.
- Execução do script de setup: rodar o script `setup.ts` para validar parte do funcionamento do backend e conexão com a infraestrutura.
- **Execução de testes automatizados básicos**, implementados com o Vitest.

Atualmente, o pipeline executa um teste simples, garantindo a estabilidade inicial. Testes adicionais e mais abrangentes poderão ser implementados futuramente para aumentar a cobertura e qualidade do código.

---

### c) Especificação Detalhada da Infraestrutura Necessária

Para provisionamento e orquestração inicial da infraestrutura, utilizamos o Docker Compose, cuja configuração está disponível no arquivo [`docker-compose.yml`](https://github.com/vmadalosso/vitly/blob/main/docker-compose.yml) do repositório.

Este arquivo define os serviços PostgreSQL e Redis, incluindo suas configurações básicas de ambiente e portas.

Além disso, a aplicação está containerizada via Docker, conforme descrito no `Dockerfile` do projeto, e o ambiente pode ser facilmente provisionado com o uso do Docker Compose para orquestração local.

---

## Seção 2 - Pipeline de Integração Contínua

### a) Configuração de um Repositório de Código

[https://github.com/vmadalosso/vitly](https://github.com/vmadalosso/vitly)

---

### b) Implementação de um Pipeline de CI usando GitHub Actions

O pipeline de integração contínua está configurado no arquivo [`.github/workflows/ci.yml`](https://github.com/vmadalosso/vitly/blob/main/.github/workflows/ci.yml) do repositório, executando as etapas descritas na Seção 1b, incluindo a compilação, validação da infraestrutura, e execução de testes automatizados básicos.

---

## Seção 3 - Scripts de Infraestrutura como Código

### a) Scripts para Provisionamento de Infraestrutura a partir da Ferramenta

Utilizamos o **Docker Compose** para o provisionamento inicial da infraestrutura, configurado no arquivo [`docker-compose.yml`](https://github.com/vmadalosso/vitly/blob/main/docker-compose.yml).

Scripts adicionais para deploy usando containers foram criados, como o script [`deploy.sh`](https://github.com/vmadalosso/vitly/blob/main/deploy.sh), que automatiza o processo de build e deploy local via Docker.

---

## Testes Automatizados

Foi criado um teste básico para validar a estrutura inicial de testes utilizando o **Vitest**. O arquivo de teste está localizado em:

```/tests/basic.test.ts ```

Este teste serve como base e poderá ser expandido para incluir testes mais robustos, testes de integração e cobertura ampliada conforme novas necessidades surgirem.

---

## Conclusão

O projeto Vitly foi desenvolvido e entregue em duas fases:

- **Fase 1:** Desenvolvimento da API, configuração do ambiente, integração contínua básica, infraestrutura inicial com Docker Compose.

- **Fase 2:** Expansão para entrega contínua (CD) com pipeline GitHub Actions, containerização completa da aplicação, criação de scripts para deploy, além da base para testes automatizados.

O projeto está funcional, com pipelines automatizados, infraestrutura containerizada e testes básicos. Para próximas etapas ou evolução, sugerem-se:

- Implementação de testes automatizados mais completos, incluindo testes de integração e end-to-end.
- Uso de orquestração avançada (ex: Kubernetes) para ambientes de produção escaláveis.
- Implementação de monitoramento e logging (ex: Prometheus, Grafana).
- Integração de práticas de segurança em pipelines e containers.

Obrigado por acompanhar o projeto Vitly!

Feito com ❤️ & ⏩ por Vitor Madalosso
