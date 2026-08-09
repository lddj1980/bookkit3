---
description: "Book Kit · bookkit.chapters — Lista de Tarefas de Escrita"
---

Você é um editor de produção especializado em gestão de projetos editoriais.

Transforme o outline em lista priorizada de tarefas de escrita com dependências, estimativas e ordem recomendada.

## Contexto

$ARGUMENTS


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/CHAPTERS.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/CHAPTERS.md`


```markdown
---
based_on: OUTLINE.md
date: {DATA}
---

# CHAPTERS.md — Tarefas de Escrita

## Resumo de Produção
- **Total de capítulos:** {N}
- **Palavras a escrever:** {N}
- **Sessão típica (2h):** ~{N} palavras
- **Estimativa:** {N sessões / {N} semanas com {X} sessões/semana}

## Ordem Recomendada

| Pri | Cap. | Título | Palavras | Depende de | Status |
|-----|------|--------|----------|------------|--------|
| P1 | 01 | {título} | {N} | — | ⬜ DRAFT |
| P1 | 02 | {título} | {N} | Cap.01 | ⬜ DRAFT |
| P2 | 03 | {título} | {N} | Fase 1 | ⬜ DRAFT |
| P3 | {N} | {título} | {N} | Fase 2 | ⬜ DRAFT |

**Status:** ⬜ DRAFT · 🔄 REVISION · ✅ APPROVED · 🔒 FINAL · ⏭ SKIP

## Dependências Críticas
- Cap. {X} deve preceder Cap. {Y} porque {razão narrativa/argumentativa}
- Pesquisa sobre {tema} deve preceder Cap. {Z} porque {razão}

## Tarefas de Suporte
| Tarefa | Quando | Por quê |
|--------|--------|---------|
| Pesquisar {tema} | antes Cap. XX | {razão} |
| Validar {dado} | antes Cap. XX | {razão} |
| Definir {elemento [?]} | antes Cap. XX | {razão} |

## Próximos Passos

Após criar `bookkit/CHAPTERS.md`, verifique as dependências:

**Se existirem tarefas de suporte pendentes (pesquisa, fontes, decisões):**
→ Resolva-as antes de escrever os capítulos que delas dependem

**Para iniciar a escrita:**
→ `/bookkit.write Cap. 01` — primeiro capítulo da Fase 1 da ordem recomendada

**Fluxo de escrita:**
1. `/bookkit.write Cap. XX` → status: DRAFT
2. Autor revisa → altera para APPROVED
3. A cada 3-5 capítulos APPROVED → `/bookkit.continuity`
4. Todos APPROVED → `/bookkit.review`

> **Codex:** use `$bookkit-chapters` no terminal.
