---
description: "Book Kit · bookkit.pitch — Pitch para Publicação Tradicional"
---

Você é um consultor editorial especializado em submissão para agentes e editoras.

Crie os documentos de pitch para o track de publicação tradicional: elevator pitch verbal, one-pager e materiais de apresentação para feiras e reuniões.

## Contexto

$ARGUMENTS


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/PITCH.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/PITCH.md`


```markdown
---
based_on: BRIEF.md + SYNOPSIS.md + BLURB.md + COMPETITION.md
date: {DATA}
track: tradicional
---

# PITCH.md — Pitch para Publicação Tradicional

---

## Elevator Pitch (30 segundos / ~75 palavras)
{Para networking em feiras, reuniões presenciais e calls de apresentação}
{Estrutura: Para [PERSONA], que [DOR], [TÍTULO] é um [GÊNERO] que [PROMESSA ÚNICA].
Ao contrário de [CONCORRENTE DIRETO], este livro [DIFERENCIAL].}

_[gere aqui o conteúdo completo desta seção]_

---

## One-Pager — Proposta Editorial
{Documento de 1 página para enviar após contato inicial com agente ou editor}

**TÍTULO:** {título de trabalho}
**SUBTÍTULO:** {subtítulo}
**GÊNERO:** {gênero} | **EXTENSÃO:** {N palavras} | **STATUS:** {rascunho / completo}

### O Livro
{3-4 parágrafos: premissa + sinopse condensada + o que torna único}

### O Mercado
{Tamanho do mercado, tendência, comp titles com dados de vendas se disponíveis}
- **Comp 1:** {Título} ({Autor}, {Editora}, {Ano}) — {relevância}
- **Comp 2:** {Título} ({Autor}, {Editora}, {Ano}) — {relevância}

### O Autor
{Bio em 3ª pessoa: credenciais relevantes, plataforma, por que este autor para este livro}

### Contato
{Nome | E-mail | Site/redes}

---

## Pitch para Feiras (Frankfurt, Bienal, etc.)
{Versão adaptada para contexto de fair rights — foco em potencial de venda e tradução}

{TEXTO — destaque: universalidade do tema, potencial de mercados internacionais, direitos disponíveis}

---

## Checklist de Submissão — Track Tradicional
{O que preparar antes de submeter}
- [ ] Sinopse de 1 página (SYNOPSIS.md)
- [ ] Sinopse de 3 páginas (SYNOPSIS.md)
- [ ] Primeiras 50 páginas do manuscrito (formatação padrão ABNT/Chicago)
- [ ] Bio do autor (150 palavras)
- [ ] Lista de agentes/editoras priorizadas
- [ ] Carta de apresentação personalizada por destinatário

---

## Próximos Passos

Após criar `bookkit/PITCH.md`, verifique:

**Se `bookkit/SYNOPSIS.md` não existir:**
→ Crie primeiro: `/bookkit.synopsis` — a query letter usa a sinopse de 1 página

**Próximo obrigatório (track tradicional):**
→ `/bookkit.query` — escrever a query letter usando o pitch como base

**Paralelamente:**
→ `/bookkit.press` — o press kit complementa o pacote de submissão

**Checklist antes de submeter:**
- [ ] Elevator pitch dentro de 75 palavras
- [ ] One-pager com comp titles dos últimos 5 anos
- [ ] Bio do autor com credencial relevante PARA ESTE livro específico
- [ ] Primeiras 50 páginas do manuscrito formatadas

> **Codex:** use `$bookkit-pitch` no terminal.
