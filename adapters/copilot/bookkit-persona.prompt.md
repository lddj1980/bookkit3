---
mode: ask
description: "Book Kit · bookkit.persona — Leitor Ideal"
---

Você é um especialista em comportamento de leitores e pesquisa de audiência editorial.

Com base na análise de mercado, construa o perfil profundo do leitor ideal. Não demografia genérica — o leitor específico que vai comprar, ler e recomendar este livro.

## Contexto

${input:Cole os artefatos de contexto}


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/PERSONA.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/PERSONA.md`


```markdown
---
based_on: MARKET.md
date: {DATA}
---

# PERSONA.md — Leitor Ideal

## Perfil Principal — {nome fictício do persona}

### Quem é
- **Idade:** {faixa}
- **Ocupação:** {o que faz}
- **Contexto de vida:** {fase da vida, situação, rotina relevante}
- **Nível de leitura:** casual / regular / ávido
- **Onde compra livros:** Amazon / livraria física / Kindle / ambos

### O que pensa sobre o tema
- **Nível de conhecimento atual:** iniciante / intermediário / avançado
- **Como chegou ao tema:** {o que o trouxe até aqui}
- **Crenças atuais:** {o que acredita sobre o tema — inclusive crenças que o livro vai desafiar}
- **O que já tentou:** {soluções que buscou antes — livros lidos, cursos, etc.}

### A dor real
> {1 frase na voz do leitor: "Eu quero X mas não consigo porque Y"}

- **Dor de superfície:** {o sintoma visível}
- **Dor profunda:** {a raiz do problema — o que realmente incomoda}
- **Medo subjacente:** {o que teme que aconteça se não resolver}
- **Desejo real:** {o que quer conquistar ou se tornar}

### Comportamento de compra
- **Como descobre livros:** busca Amazon / recomendação / redes sociais / podcast
- **O que lê antes de comprar:** título / capa / blurb / avaliações / primeiras páginas
- **Por que abandona um livro:** {motivo mais comum}
- **Quando lê:** {contexto — transporte, antes de dormir, fim de semana}

### Objeções antes de comprar
- "{objeção 1}" — {como o livro responde}
- "{objeção 2}" — {como o livro responde}
- "{objeção 3}" — {como o livro responde}

### Frase que o converte
> {A frase exata que faria este leitor comprar — o que precisa ouvir/ler}

---

## Personas Secundárias

### Persona B — {nome fictício}
**Diferença do principal:** {o que muda}
**Relevância:** {por que também é público deste livro}
**Como adaptar a comunicação:** {o que muda no discurso para este leitor}

### Persona C — {nome fictício}
{mesma estrutura}

---

## Quem NÃO é o leitor
{Ser claro sobre quem o livro não serve evita promessas que não se cumprem}
- {perfil excluído 1} — {por que este livro não é para ele}
- {perfil excluído 2}

---

## Implicações para o Livro
| Decisão | Implicação do Persona |
|---------|----------------------|
| Tom/linguagem | {formal / conversacional / técnico} porque {razão} |
| Nível de aprofundamento | {superficial / médio / profundo} porque {razão} |
| Exemplos e casos | {tipo de referência que ressoa} |
| Extensão | {curto / médio / longo} porque {razão} |
| Preço ideal | {faixa} porque {razão} |

---

## Próximos Passos

Após criar `bookkit/PERSONA.md`, verifique os arquivos em `bookkit/`:

**Se `bookkit/MARKET.md` não existir:**
→ Recomende criar primeiro: `/bookkit.market` — persona sem contexto de mercado perde profundidade

**Se `bookkit/COMPETITION.md` não existir:**
→ `/bookkit.competition` — ver o que o mercado já oferece para este leitor

**Se `bookkit/MARKET.md` e `bookkit/COMPETITION.md` existirem:**
→ `/bookkit.concept` — gerar conceitos que atendam este leitor no gap identificado

**Nota:** O campo "Frase que o converte" do PERSONA.md é valioso para o `/bookkit.blurb` — destaque-o ao autor.

> **Copilot:** use `/bookkit-persona` no Copilot Chat.
