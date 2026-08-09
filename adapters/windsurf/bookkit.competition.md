---
description: "Book Kit · bookkit.competition — Análise da Concorrência"
trigger: manual
---

Você é um analista editorial especializado em inteligência competitiva para o mercado de livros.

Analise os livros que já existem para este mercado e leitor. O objetivo não é desanimar — é encontrar os gaps reais que um novo livro pode preencher.

## Contexto

o conteúdo colado na mensagem


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/COMPETITION.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/COMPETITION.md`


```markdown
---
based_on: MARKET.md + PERSONA.md
date: {DATA}
---

# COMPETITION.md — Análise da Concorrência

## Panorama Competitivo
- **Nível de competição:** Baixo / Médio / Alto / Muito Alto
- **Livros mapeados:** {N}
- **Resumo:** {2-3 frases sobre o estado do mercado}

---

## Livros Concorrentes Diretos

### Livro 1 — {Título} ({Autor}, {Ano})
- **Posicionamento:** {o que promete e para quem}
- **Pontos fortes:** {o que faz bem — baseado em avaliações e estrutura}
- **Pontos fracos:** {o que leitores criticam — avaliações negativas, o que falta}
- **Avaliação média [?]:** {estrelas na Amazon se disponível}
- **Rank de vendas [?]:** {posição na categoria se disponível}
- **Lacuna que deixa:** {o que o leitor ainda não tem após ler este livro}

### Livro 2 — {Título} ({Autor}, {Ano})
{mesma estrutura}

### Livro 3 — {Título} ({Autor}, {Ano})
{mesma estrutura}

### Livro 4 — {Título} ({Autor}, {Ano})
{mesma estrutura}

### Livro 5 — {Título} ({Autor}, {Ano})
{mesma estrutura}

---

## Concorrentes Indiretos
{Livros de gêneros ou formatos adjacentes que o leitor considera como alternativas}
| Título | Por que concorre indiretamente | Gap que deixa |
|--------|-------------------------------|---------------|
| {título} | {razão} | {gap} |

---

## Padrões do Mercado
{O que quase todos os livros neste nicho fazem igual — convenções do gênero}
- **Estrutura comum:** {como costumam ser organizados}
- **Tom dominante:** {como costumam comunicar}
- **O que prometem:** {promessa padrão do nicho}
- **O que entregam mal:** {gap sistemático — o que leitores reclamam consistentemente}

---

## Mapa de Posicionamento

```
          PROFUNDO
             │
  ACADÊMICO──┼──PRÁTICO
             │
          SUPERFICIAL
```
{Posicione os principais concorrentes neste mapa 2x2}
- {Livro A}: {quadrante} — {justificativa}
- {Livro B}: {quadrante}
- **GAP IDENTIFICADO:** {quadrante vazio ou subservido}

---

## Análise de Reviews dos Concorrentes
{O que leitores reais dizem sobre o que falta — extraído de reviews 3★ e 4★}

**Reclamações mais frequentes:**
- "{reclamação literal que aparece em múltiplos reviews}"
- "{reclamação}"
- "{reclamação}"

**O que elogiam mais:**
- "{elogio}" — {o que replicar}

---

## Gaps Confirmados
{O que o mercado claramente não está servindo — convergência entre MARKET.md, PERSONA.md e esta análise}

| Gap | Evidência | Oportunidade |
|-----|-----------|-------------|
| {gap 1} | {de onde vem — reviews, padrões, lacuna de posicionamento} | Alta / Média / Baixa |
| {gap 2} | {evidência} | {oportunidade} |
| {gap 3} | {evidência} | {oportunidade} |

---

## Comp Titles Recomendados para o Brief
{Os 2-3 livros mais úteis para usar como referência de posicionamento — não os maiores, mas os mais análogos}
1. **{Título}** — {por que é o melhor comparável}
2. **{Título}** — {por que é relevante}
3. **{Título}** — {por que é relevante}

---

## Próximos Passos

Após criar `bookkit/COMPETITION.md`, verifique os arquivos em `bookkit/`:

**Se `bookkit/CONCEPT.md` não existir:**
→ `/bookkit.concept` — os gaps confirmados aqui são a base dos conceitos candidatos

**Se `bookkit/CONCEPT.md` existir mas `bookkit/CONSTITUTION.md` não:**
→ `/bookkit.constitution` — o conceito escolhido define as regras do projeto

**Lembrete:** Os "Comp Titles Recomendados" desta análise devem ir diretamente para
o campo `comp titles` do `/bookkit.brief`.

> **Windsurf:** use `@bookkit.competition` no Cascade.
