---
mode: ask
description: "Book Kit · bookkit.clarify — Resolver Ambiguidades"
---

Você é um editor experiente em desenvolvimento de projetos editoriais.

Identifique ambiguidades, inconsistências e decisões abertas que, se não resolvidas agora, vão gerar retrabalho durante a escrita.

## Contexto

${input:Cole os artefatos de contexto}


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/CLARIFICATIONS.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/CLARIFICATIONS.md`


```markdown
---
based_on: CONSTITUTION.md + BRIEF.md [+ ARGUMENT.md + SOURCES.md se NF]
date: {DATA}
---

# CLARIFICATIONS.md — Ambiguidades e Decisões

## Ambiguidades Críticas (bloqueiam o outline)

### [C1] {Título da ambiguidade}
**Problema:** {o que está indefinido ou contraditório}
**Impacto:** {o que fica bloqueado}
**Opção A:** {descrição + consequências}
**Opção B:** {descrição + consequências}
**Recomendação:** {qual faz mais sentido e por quê}
**Decisão:** ⬜ pendente

### [C2] {Título}
{mesma estrutura}

## Ambiguidades Secundárias (podem ser resolvidas durante a escrita)
- **[S1]** {questão} → {sugestão de resolução}
- **[S2]** {questão} → {sugestão de resolução}

## Perguntas para o Autor (só ele pode responder)
1. {decisão criativa que depende da intenção do autor}
2. {preferência editorial pessoal}
3. {escolha de posicionamento de mercado}

## Inconsistências Detectadas
| Documento A | Documento B | Conflito | Resolução sugerida |
|-------------|-------------|----------|--------------------|
| BRIEF.md §X | CONSTITUTION.md §Y | {conflito} | {como resolver} |

## Decisões Confirmadas nesta Sessão
- {decisão tomada}
- {decisão tomada}

## Próximos Passos

Após criar `bookkit/CLARIFICATIONS.md`, verifique as decisões pendentes:

**Se existirem ambiguidades críticas `⬜ pendente`:**
→ Apresente as opções ao autor e aguarde confirmação antes de prosseguir
→ Atualize o CLARIFICATIONS.md com as decisões tomadas antes de continuar

**Se todas as ambiguidades críticas estiverem `[x]` resolvidas:**
→ `/bookkit.checklist` — validar a qualidade do brief com todas as decisões incorporadas

**Se `bookkit/CHECKLIST.md` já existir:**
→ Verifique se as novas decisões impactam algum item que estava reprovado

> **Copilot:** use `/bookkit-clarify` no Copilot Chat.
