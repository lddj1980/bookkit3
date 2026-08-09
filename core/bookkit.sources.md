---
description: "Book Kit · bookkit.sources — Fontes e Pesquisa [Não-ficção]"
---

Você é um pesquisador editorial e especialista em gestão de fontes para não-ficção.

**Este comando é específico para livros de não-ficção.**

Com base no ARGUMENT.md, mapeie as fontes necessárias, organize as já disponíveis e identifique as lacunas de pesquisa que bloqueiam o projeto.

## Contexto

$ARGUMENTS


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/SOURCES.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/SOURCES.md`


```markdown
---
based_on: ARGUMENT.md + BRIEF.md
date: {DATA}
---

# SOURCES.md — Fontes e Pesquisa

## Status de Pesquisa
- **Total de fontes mapeadas:** {N}
- **Fontes confirmadas:** {N}
- **Fontes pendentes [?]:** {N}
- **Lacunas críticas:** {N}

## Fontes por Premissa

### Premissa 1 — {título}
| Fonte | Tipo | Status | Capítulo | Notas |
|-------|------|--------|----------|-------|
| {autor, título, ano} | livro | ✓ confirmada | Cap. XX | {o que sustenta} |
| {dado estatístico} | pesquisa | [?] buscar | Cap. XX | {instituição responsável} |
| {entrevista com X} | primária | [?] pendente | Cap. XX | {por que este especialista} |

### Premissa 2 — {título}
{mesma estrutura}

### Premissa 3 — {título}
{mesma estrutura}

## Fontes Confirmadas — Referências Completas

### Livros e artigos
- {SOBRENOME, Nome. *Título*. Editora, Ano.}
- {SOBRENOME, Nome. "Artigo". *Periódico*, v. X, n. Y, pp. ZZ-ZZ, Ano.}

### Pesquisas e dados
- {Instituição. "Nome da pesquisa". Ano. URL.}

### Fontes primárias (entrevistas, documentos)
- {Nome do especialista — área — por que relevante — status do contato}

## Lacunas Críticas (bloqueiam escrita)
{O que DEVE ser encontrado antes de escrever os capítulos afetados}
- [ ] **[CRÍTICO]** {dado/fonte} → necessário para Cap. {XX} — {onde buscar}
- [ ] **[CRÍTICO]** {entrevista com X} → necessário para Cap. {XX} — {como contatar}

## Lacunas Secundárias (podem ser escritos sem, mas enfraquece)
- [ ] {fonte} → fortaleceria {premissa X}
- [ ] {dado} → daria mais precisão ao Cap. {XX}

## Formato de Citação
**Padrão adotado:** {ABNT | APA | Chicago | outro}
**Como citar no manuscrito:** {instrução para consistência}

## Próximos Passos

Após criar `bookkit/SOURCES.md`, verifique as lacunas críticas:

**Se existirem lacunas críticas não resolvidas:**
→ Resolva as lacunas ANTES de continuar — liste exatamente onde buscar cada uma
→ Retorne com `/bookkit.sources` atualizado após encontrar as fontes

**Se todas as lacunas críticas estiverem resolvidas:**
→ `/bookkit.clarify` — com argumento e fontes definidos, esclarecer ambiguidades restantes

**Se `bookkit/CLARIFICATIONS.md` já existir e as lacunas eram a única pendência:**
→ `/bookkit.checklist` — validar a qualidade de todo o brief
