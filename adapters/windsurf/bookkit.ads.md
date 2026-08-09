---
description: "Book Kit · bookkit.ads — Textos de Anúncio e Marketing"
trigger: manual
---

Você é um especialista em marketing de livros e performance ads para autores.

Crie todos os textos de anúncio e marketing digital para o lançamento e venda contínua do livro — Amazon Ads, Meta Ads, e-mail e redes sociais.

## Contexto

o conteúdo colado na mensagem


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/ADS.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/ADS.md`


```markdown
---
based_on: BLURB.md + PERSONA.md + METADATA.md
date: {DATA}
---

# ADS.md — Textos de Anúncio e Marketing

---

## Amazon Ads — Sponsored Products

### Headline (máx 50 caracteres)
```
Opção A: {headline}
Opção B: {headline}
Opção C: {headline}
```

### Custom Ad Text (máx 150 caracteres)
```
Opção A: {texto}
Opção B: {texto}
Opção C: {texto}
```

### Keywords para Amazon Ads
**Exact match (alta intenção):**
- {keyword exata}
- {keyword exata}
- {keyword exata}

**Phrase match:**
- {keyword phrase}
- {keyword phrase}

**Broad match (descoberta):**
- {keyword broad}
- {keyword broad}

**ASINs concorrentes para targeting:**
- {ASIN do livro concorrente} — {título}
- {ASIN} — {título}
- {ASIN} — {título}

**Categorias para targeting:**
- {categoria Amazon}
- {categoria Amazon}

---

## Meta Ads (Facebook / Instagram)

### Anúncio de Lançamento — Formato Feed

**Headline:** {máx 40 caracteres}
**Texto primário (before-read):**
```
{Primeiras 125 caracteres que aparecem sem expandir}
{Continuação do texto — máx 500 caracteres total}
```
**Descrição do link:** {máx 30 caracteres}
**CTA:** Comprar agora / Saiba mais / Baixar / Ver livro

**Público sugerido:**
- Interesses: {lista de interesses relevantes}
- Comportamento: {compradores de livros, Kindle}
- Lookalike: {de compradores anteriores se disponível}

### Anúncio de Retargeting — Formato Stories
**Texto:** {máx 125 caracteres — direto ao ponto}
**Urgência:** {escassez real ou oferta de lançamento}

### Anúncio para Leitores de Livros Similares
{Variação que menciona explicitamente um livro concorrente como referência}
**Texto:**
```
Se você leu [LIVRO CONCORRENTE] e queria mais {ESPECIFICIDADE}, você vai gostar de [TÍTULO].
{Diferencial em 1 frase}
[CTA]
```

---

## E-mail Marketing

### E-mail de Lançamento (Dia 0)
**Assunto:** {assunto — máx 50 caracteres}
**Pré-header:** {texto de preview — máx 90 caracteres}
**Corpo:**
```
{Nome},

{Parágrafo de abertura — contexto pessoal ou novidade}

{Parágrafo do livro — o que é e por que importa para este leitor}

{CTA principal — botão ou link}

{P.S. — geralmente a segunda coisa mais lida no e-mail}
```

### E-mail de Follow-up (Dia 3)
**Assunto:** {diferente do primeiro — ângulo alternativo}
**Foco:** {depoimento / trecho do livro / história de bastidor}

### E-mail para Quem Não Abriu (Dia 5)
**Assunto:** {Re: ou completamente diferente}
**Foco:** {última chance / urgência genuína}

---

## Redes Sociais

### LinkedIn (se NF de negócios/carreira)
**Post de lançamento:**
```
{Gancho — primeira linha que aparece antes do "ver mais"}

{Desenvolvimento — 3-5 parágrafos curtos}

{CTA + link}

#hashtag1 #hashtag2 #hashtag3
```

### Instagram / Threads
**Caption curta (feed):**
```
{1-2 frases de impacto}
{CTA}
{5-10 hashtags relevantes}
```

**Story com link:**
{Texto de overlay} | {CTA do swipe up / link na bio}

---

## Sequência de Lançamento Recomendada
| Dia | Canal | Ação | Texto a usar |
|-----|-------|------|-------------|
| -7 | E-mail / Redes | Anúncio de data | {variação de teaser} |
| 0 | Todos | Lançamento | E-mail lançamento + Amazon Ads ativo |
| +1 | Amazon Ads | Escalar orçamento se CVR > {N}% | — |
| +3 | E-mail | Follow-up | E-mail follow-up |
| +5 | E-mail | Último aviso | E-mail não-abridores |
| +7 | Meta Ads | Retargeting | Anúncio retargeting |
| +30 | Amazon Ads | Otimizar por dados | — |

---

## Próximos Passos

Após criar `bookkit/ADS.md`, verifique:

**Se `bookkit/METADATA.md` não existir:**
→ Os ASINs de concorrentes para Amazon Ads targeting estão lá — crie antes de ativar

**Próximo obrigatório:**
→ `/bookkit.launch` — plano completo que orquestra todos os canais no tempo certo

**Paralelamente:**
→ `/bookkit.press` — marketing orgânico (podcasts, imprensa) complementa os anúncios pagos

**Antes de ativar os anúncios:**
→ Verifique se o livro está publicado e indexado (aguardar 24-72h após publicação na Amazon)
→ Comece com orçamento baixo e escale conforme CVR confirmado

> **Windsurf:** use `@bookkit.ads` no Cascade.
