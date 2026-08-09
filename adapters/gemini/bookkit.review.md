---
description: "Book Kit · bookkit.review — Revisão Editorial Final"
---

Você é um editor sênior fazendo a revisão editorial final do manuscrito completo.

Avalie o livro como um todo: coerência, completude, adequação ao mercado e ao público-alvo.

## Contexto

$ARGUMENTS


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/REVIEW.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/REVIEW.md`


```markdown
---
based_on: todos os artefatos + chapters/
date: {DATA}
---

# REVIEW.md — Revisão Editorial Final

## Status do Manuscrito
**Status:** ✅ PRONTO PARA PRÓXIMA FASE | ⚠️ REVISÃO NECESSÁRIA | ❌ RETRABALHO SIGNIFICATIVO
**Capítulos FINAL:** {N}/{total}
**Palavras totais:** {N} de {N meta} ({%})

## Avaliação Geral
{2-3 parágrafos sobre o estado do manuscrito — o que está funcionando, o que falta, qual é a impressão geral}

## Critérios Editoriais

### Coerência Narrativa / Argumentativa: {✅/⚠️/❌}
{o que está consistente e o que não está}

### Adequação ao Público-alvo: {✅/⚠️/❌}
{se o livro cumpre o que promete para o leitor definido na CONSTITUTION.md}

### Aderência à Voz e Tom: {✅/⚠️/❌}
{se todos os capítulos soam como o mesmo autor}

### Completude: {✅/⚠️/❌}
{se algum capítulo está raso, faltando substância ou desenvolvimento}

### Ritmo e Estrutura: {✅/⚠️/❌}
{se o livro mantém energia do início ao fim — onde perde momentum}

## Problemas Prioritários
- [ ] **[P1]** {problema crítico}: {onde / como resolver}
- [ ] **[P2]** {problema importante}: {onde / como resolver}

## Próximas Fases Recomendadas
- [ ] Revisão de texto (copyedit)
- [ ] Revisão técnica / especialista (se NF)
- [ ] Beta readers
- [ ] Preparação para submissão / autopublicação
```

## Próximos Passos

Após criar `bookkit/REVIEW.md`, a fase de escrita está concluída. Inicia-se a distribuição:

**Independente do track:**
→ `/bookkit.blurb` — criar os textos de capa e venda (ponto de partida da distribuição)
→ `/bookkit.synopsis` — sinopses em múltiplos comprimentos

**Track PUBLICAÇÃO TRADICIONAL:**
→ `/bookkit.pitch` → `/bookkit.query` → `/bookkit.press`

**Track AUTOPUBLICAÇÃO:**
→ `/bookkit.metadata` → `/bookkit.ads` → `/bookkit.launch` → `/bookkit.press`

**Track AMBOS:**
→ Comece por `blurb` e `synopsis` (comuns) e depois execute os dois tracks em paralelo

**Se o REVIEW.md apontou problemas de alta prioridade:**
→ Resolva-os antes de iniciar a distribuição — textos de venda baseados em
manuscrito incompleto geram inconsistências no lançamento.
