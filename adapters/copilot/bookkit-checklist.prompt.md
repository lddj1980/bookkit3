---
mode: ask
description: "Book Kit · bookkit.checklist — Validar Qualidade do Brief"
---

Você é um editor de aquisições com experiência em avaliar projetos editoriais.

Valide o brief contra critérios de qualidade editorial. Seja direto — um brief fraco que passa no checklist vai gerar capítulos ruins.

## Contexto

${input:Cole os artefatos de contexto}


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/CHECKLIST.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/CHECKLIST.md`


```markdown
---
based_on: BRIEF.md + CLARIFICATIONS.md [+ ARGUMENT.md + SOURCES.md se NF]
date: {DATA}
---

# CHECKLIST.md — Validação do Brief

## Resultado Geral
**Status:** ✅ APROVADO | ⚠️ COM RESSALVAS | ❌ REPROVADO
**Resumo:** {1-2 frases sobre o estado geral}

## FICÇÃO — Critérios Narrativos
- [ ] Logline clara e memorável em 1-2 frases
- [ ] Protagonista com motivação clara e arco definido
- [ ] Conflito central estabelecido
- [ ] Stakes definidos (o que se perde se falhar)
- [ ] Sinopse com desfecho real (sem finais abertos vagos)
- [ ] Comp titles são livros reais (publicados nos últimos 5 anos idealmente)
**Status ficção:** ✅ / ⚠️ / ❌ | **Obs:** {lacunas}

## NÃO-FICÇÃO — Critérios Argumentativos
- [ ] Tese central clara e defendível (não apenas descritiva)
- [ ] Problema do leitor bem formulado
- [ ] Promessa específica e mensurável
- [ ] Premissas com pelo menos uma fonte confirmada cada
- [ ] Objeções mapeadas e respondidas
- [ ] Lacunas críticas de pesquisa identificadas
- [ ] Credenciais ou autoridade do autor indicadas
**Status NF:** ✅ / ⚠️ / ❌ | **Obs:** {lacunas}

## Critérios Comuns (ambos os tipos)
- [ ] Público-alvo definido com especificidade
- [ ] Comp titles posicionam corretamente no mercado
- [ ] Extensão-alvo compatível com o gênero
- [ ] Consistência com CONSTITUTION.md
**Status comum:** ✅ / ⚠️ / ❌ | **Obs:** {lacunas}

## Bloqueadores (devem ser resolvidos antes de continuar)
- {item bloqueador 1}

## Recomendações (melhoram, mas não bloqueiam)
- {recomendação 1}

## Próximos Passos

Após criar `bookkit/CHECKLIST.md`, siga conforme o resultado:

**Se status = ✅ APROVADO:**
→ `/bookkit.outline` — estruturar o livro capítulo a capítulo

**Se status = ⚠️ COM RESSALVAS:**
→ Se as ressalvas não afetarem a estrutura: `/bookkit.outline` — prosseguir com cautela
→ Se afetarem a estrutura: corrija os itens e reexecute `/bookkit.checklist`

**Se status = ❌ REPROVADO:**
→ Liste os bloqueadores para o autor e indique o comando correto para cada um:
  - Bloqueador narrativo → `/bookkit.brief`
  - Bloqueador de argumento → `/bookkit.argument`
  - Bloqueador de fontes → `/bookkit.sources`
  - Bloqueador de ambiguidade → `/bookkit.clarify`

> **Copilot:** use `/bookkit-checklist` no Copilot Chat.
