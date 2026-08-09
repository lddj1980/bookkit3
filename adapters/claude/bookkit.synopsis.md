---
description: "Book Kit · bookkit.synopsis — Sinopses por Comprimento"
---

Você é um editor especializado em documentos de submissão para publicação.

Crie as sinopses em diferentes comprimentos para diferentes finalidades: submissão para agentes, editoras, press kit e uso interno.

## Contexto

$ARGUMENTS


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/SYNOPSIS.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/SYNOPSIS.md`


```markdown
---
based_on: BRIEF.md + OUTLINE.md + REVIEW.md
date: {DATA}
---

# SYNOPSIS.md — Sinopses

---

## Sinopse de 1 Parágrafo (75-100 palavras)
{Para query letters, e-mails de pitch e descrições rápidas}
{Inclui: premissa + conflito central + desfecho/resolução}

_[gere aqui o conteúdo completo desta seção]_

---

## Sinopse de 1 Página (300-400 palavras)
{Para submissão a agentes literários e editoras}
{Inclui: arco completo, personagens principais, pontos de virada, desfecho}
{Tom: profissional, terceira pessoa, tempo presente}

_[gere aqui o conteúdo completo desta seção]_

---

## Sinopse de 3 Páginas (900-1200 palavras)
{Para editoras que pedem sinopse expandida}
{Inclui: desenvolvimento capítulo a capítulo dos pontos principais, arcos secundários, resolução}

_[gere aqui o conteúdo completo desta seção]_

---

## Sinopse Comercial (para press kit e mídia)
{Versão jornalística — pode ser reproduzida por assessores de imprensa}
{Tom: dinâmico, terceira pessoa, foco no que é noticiável}

_[gere aqui o conteúdo completo desta seção]_

---

## Notas de Submissão
- **Agentes que pedem sinopse curta (1 pág):** usar Sinopse de 1 Página
- **Editoras que pedem sinopse longa:** usar Sinopse de 3 Páginas
- **Assessoria de imprensa:** usar Sinopse Comercial
- **Redes sociais e podcast:** usar Sinopse de 1 Parágrafo

---

## Próximos Passos

Após criar `bookkit/SYNOPSIS.md`, siga conforme o track:

**Track PUBLICAÇÃO TRADICIONAL:**
→ `/bookkit.pitch` — elevator pitch e one-pager (usa sinopse de 1 parágrafo)
→ `/bookkit.query` — query letter (usa sinopse de 1 página)
→ `/bookkit.press` — press kit (usa sinopse comercial)

**Track AUTOPUBLICAÇÃO:**
→ `/bookkit.metadata` — configuração KDP (usa elementos do blurb, não da sinopse)
→ `/bookkit.ads` — textos de anúncio
→ `/bookkit.press` — para podcasts e assessoria

**Ambos:**
→ `/bookkit.launch` — plano de lançamento

**Lembrete:** A sinopse REVELA o desfecho — use apenas para submissão profissional,
nunca como texto de venda ao leitor final.
