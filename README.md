<div align="center">

# 💰 MFC — My Finance Control

**Controle financeiro pessoal com foco em organização, precisão e qualidade de software.**

Projeto acadêmico · Univille · Testes de Software I

**Node.js 22+ · HTML · CSS · JavaScript · Playwright**

[Sobre](#sobre) · [Execução](#execução) · [Equipe](#equipe)

</div>

---

## Sobre

O **MFC — My Finance Control** é um sistema local de controle financeiro pessoal. Permite registrar receitas e despesas, acompanhar o saldo, consultar gastos por categoria e definir um orçamento mensal.

Desenvolvido para o projeto integrado do segundo bimestre da disciplina de **Testes de Software I**, o trabalho reúne especificação de requisitos, planejamento, desenvolvimento e aplicação dos quatro níveis de teste: unitário, integração, sistema e aceitação.

## Funcionalidades

| Recurso | Descrição |
| :--- | :--- |
| Receitas e despesas | Cadastro de lançamentos com descrição, valor, data, tipo e categoria. |
| Consulta e filtros | Pesquisa dos lançamentos por período, tipo e categoria. |
| Edição e exclusão | Atualização de registros e exclusão mediante confirmação. |
| Resumo financeiro | Visualização de receitas, despesas e saldo do período. |
| Gastos por categoria | Acompanhamento da distribuição das despesas. |
| Orçamento mensal | Definição de limite e acompanhamento do percentual utilizado. |
| Alertas de orçamento | Indicação de limite atingido ou ultrapassado. |
| Persistência local | Armazenamento dos dados em arquivo JSON. |

### Comportamentos importantes

- Valores monetários são tratados em centavos nos cálculos.
- Descrição vazia, valor zero e data futura são rejeitados.
- O tipo de um lançamento existente não pode ser alterado pela edição.
- Ultrapassar o orçamento gera um alerta, sem bloquear novas despesas.
- Os filtros de tipo e categoria alteram a listagem; o resumo mantém os totais do período selecionado.

## Tecnologias

| Camada | Tecnologia |
| :--- | :--- |
| Interface | HTML, CSS e JavaScript |
| Servidor e API | Node.js |
| Persistência | Arquivo JSON local |
| Testes unitários e de integração | `node:test` e `node:assert/strict` |
| Cobertura de código | Recurso nativo do Node.js |
| Testes de sistema / E2E | Playwright com Chromium |

## Execução

### 1. Preparar o ambiente

Instale o **Node.js 22 ou superior**. Depois, abra um novo terminal e confira:

```bash
node --version
npm --version
```

Baixe o projeto pelo botão **Code → Download ZIP** do GitHub e extraia os arquivos. Abra o terminal na pasta que contém o arquivo `package.json`.

### 2. Iniciar o sistema

```bash
npm start
```

Abra no navegador:

**http://localhost:3000**

Mantenha o terminal aberto enquanto utiliza a aplicação. Para encerrar, pressione **Ctrl+C**.

> **Windows / PowerShell:** se aparecer uma mensagem de bloqueio do arquivo `npm.ps1`, use `npm.cmd start`. Nos demais comandos, substitua `npm` por `npm.cmd` e `npx` por `npx.cmd`.

O sistema e os testes unitários e de integração utilizam recursos nativos do Node.js; não é necessário instalar dependências com `npm install` para essas operações. O Playwright é instalado separadamente para os testes E2E.

**Não abra `public/index.html` diretamente:** a interface precisa do servidor em execução.

## Como utilizar

1. Acesse **Lançamentos** e cadastre uma receita.
2. Registre uma despesa com a categoria correspondente.
3. Consulte **Visão geral** para acompanhar o saldo e os gastos do mês.
4. Defina um limite em **Orçamento mensal**.
5. Utilize os filtros para consultar registros e as ações para editar ou excluir lançamentos.

Informe valores como `1500,50` ou `1500.50`, sem separador de milhar. Utilize dados fictícios durante as demonstrações e a homologação.

## Organização do projeto

| Caminho | Responsabilidade |
| :--- | :--- |
| `public/` | Interface da aplicação |
| `src/domain.cjs` | Cálculos, validações e regras de negócio |
| `src/service.cjs` | Operações e consultas financeiras |
| `src/repository.cjs` | Leitura e gravação dos dados |
| `src/server.cjs` | API HTTP e disponibilização da interface |
| `tests/` | Testes automatizados |
| `data/` | Dados locais da aplicação |
| `evidencias/` | Registros e capturas das execuções |

## Armazenamento e escopo

Os dados são armazenados em `data/mfc.json`. Para fazer uma cópia de segurança, encerre o servidor e copie esse arquivo. Os testes automatizados utilizam arquivos temporários separados dos dados do usuário.

O MFC foi desenvolvido para uso local e individual. Não possui autenticação, integração bancária ou sincronização em nuvem. Execute apenas uma instância utilizando a mesma pasta de dados.

## Problemas comuns

| Situação | Orientação |
| :--- | :--- |
| `node` ou `npm` não reconhecido | Instale o Node.js e abra um novo terminal. |
| Bloqueio de `npm.ps1` | Use `npm.cmd` no PowerShell. |
| Página não abre | Confirme que o servidor está ativo e acesse `http://localhost:3000`. |
| Porta em uso | Encerre a outra instância que está utilizando a porta 3000. |
| Chromium não encontrado | Execute `npx playwright install chromium`. |
| Erro ao salvar | Confira a permissão de escrita na pasta e o espaço disponível. |

## Equipe

- Davi Miguel Ramos
- Gabriel Albano de Oliveira
- Gustavo Rafael Brietzig
- Pedro Henrique de Oliveira

---

<div align="center">

**MFC — My Finance Control**  
Projeto acadêmico de Testes de Software I · Univille

</div>
