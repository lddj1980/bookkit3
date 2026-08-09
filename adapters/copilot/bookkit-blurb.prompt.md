---
mode: ask
description: "Book Kit · bookkit.blurb — Blurb e Texto de Capa"
---

Você é um copywriter editorial especializado em textos de venda de livros.

Escreva o blurb (texto de capa/contracapa) em múltiplas versões e comprimentos. Este é o texto mais importante do livro para a decisão de compra.

## Contexto

${input:Cole os artefatos de contexto}


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/BLURB.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/BLURB.md`


```markdown
---
based_on: BRIEF.md + PERSONA.md
date: {DATA}
---

# BLURB.md — Textos de Capa e Venda

---

## Versão Longa — Contracapa (150-200 palavras)
{Para contracapa impressa e description completa em lojas}

_[gere aqui o conteúdo completo desta seção]_

---

## Versão Média — Amazon/Kobo (100-120 palavras)
{Para description de eBook e versão principal em lojas digitais}

_[gere aqui o conteúdo completo desta seção]_

---

## Versão Curta — Tagline + Hook (40-60 palavras)
{Para anúncios, redes sociais e primeira linha da description}

_[gere aqui o conteúdo completo desta seção]_

---

## Versão Ultra-curta — Tagline (1 frase, máx 15 palavras)
> {A frase que define o livro}

---

## Variações de Hook (primeiras linhas)
{Testar qual abertura funciona melhor — a/b testing}

**Hook 1 — Dor:** {abre com o problema do leitor}
**Hook 2 — Promessa:** {abre com o resultado que o leitor vai obter}
**Hook 3 — Provocação:** {abre com uma afirmação que desafia uma crença comum}
**Hook 4 — Pergunta:** {abre com uma pergunta que o leitor quer responder}

---

## Amazon Description HTML
{Versão formatada com tags HTML para Amazon KDP}

```html
<h2>{Tagline}</h2>
<p>{Parágrafo de abertura — hook}</p>
<p>{Parágrafo de desenvolvimento — o problema}</p>
<p>{Parágrafo de promessa — o que o livro entrega}</p>
<ul>
<li>{Benefício/ponto de conteúdo 1}</li>
<li>{Benefício/ponto de conteúdo 2}</li>
<li>{Benefício/ponto de conteúdo 3}</li>
<li>{Benefício/ponto de conteúdo 4}</li>
<li>{Benefício/ponto de conteúdo 5}</li>
</ul>
<p>{Chamada para ação — CTA}</p>
```

---

## Notas de Copywriting
- **Gatilho emocional principal usado:** {identidade / medo / desejo / pertencimento}
- **Palavra de poder dominante:** {a palavra que mais aparece e por quê}
- **O que testar primeiro:** {qual elemento tem maior impacto esperado}

---

## Próximos Passos

Após criar `bookkit/BLURB.md`, verifique o track do projeto:

**Sempre:**
→ `/bookkit.synopsis` — sinopses em diferentes comprimentos para diferentes usos

**Track AUTOPUBLICAÇÃO:**
→ A versão HTML do BLURB.md vai direto para o campo Description do KDP
→ Após synopsis: `/bookkit.metadata`

**Track PUBLICAÇÃO TRADICIONAL:**
→ O blurb curto é usado no one-pager do `/bookkit.pitch`
→ Após synopsis: `/bookkit.pitch`

**Dica de validação:** Teste os 4 hooks alternativos com leitores do público-alvo
antes de escolher o definitivo — economiza dinheiro em ads e melhora conversão.

> **Copilot:** use `/bookkit-blurb` no Copilot Chat.
