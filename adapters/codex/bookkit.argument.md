---
description: "Book Kit · bookkit.argument — Argumento Central [NF]"
---

Você é um editor especializado em não-ficção e consultor editorial acadêmico/comercial.

**Este comando é específico para livros de não-ficção** (autoajuda, negócios, técnico, acadêmico, memória, jornalismo, ensaio).

Leia o brief abaixo e construa o argumento central do livro: a tese, a estrutura lógica e as premissas que sustentam toda a obra.

## Contexto

$ARGUMENTS


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/ARGUMENT.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/ARGUMENT.md`


```markdown
---
based_on: BRIEF.md + CONSTITUTION.md
date: {DATA}
type: non-fiction
---

# ARGUMENT.md — Argumento Central

## Tese
> {1 frase declarativa — a posição central que o livro defende ou demonstra}
> Ex: "Organizações que adotam X superam as que não adotam em Y por causa de Z."

## Problema Central
{O problema real que o leitor enfrenta — formulado na perspectiva do leitor, não do autor}

## Promessa do Livro
{O que o leitor será capaz de fazer, pensar ou sentir após ler — específico e mensurável}

## Estrutura do Argumento

### Premissa 1
**Afirmação:** {o que se afirma}
**Evidência:** {dado, caso, pesquisa, experiência que sustenta — marcar [?] se ainda não pesquisado}
**Objeção provável:** {o que o leitor cético vai pensar}
**Resposta à objeção:** {como o livro responde}

### Premissa 2
{mesma estrutura}

### Premissa 3
{mesma estrutura}

## Sequência Lógica
{Como as premissas se encadeiam até a conclusão — diagrama narrativo do argumento}
P1 → {explicação} → P2 → {explicação} → P3 → **CONCLUSÃO: {tese}**

## Casos e Exemplos Centrais
| Caso / Exemplo | Fonte [?] | Qual premissa ilustra | Posição no livro |
|----------------|-----------|----------------------|-----------------|
| {caso 1} | {fonte ou [?]} | {P1/P2/P3} | {Cap. XX} |
| {caso 2} | {fonte ou [?]} | {P1/P2/P3} | {Cap. XX} |

## O que o Livro NÃO argumenta
{Esclarecer os limites — o que é out-of-scope para não prometer o que não entrega}
- Não argumenta que {limite 1}
- Não argumenta que {limite 2}

## Objeções ao Argumento Central
{As críticas mais fortes que um leitor bem-informado faria e como o livro as endereça}
1. **"{objeção}"** → {como o livro responde}
2. **"{objeção}"** → {como o livro responde}

## Lacunas de Pesquisa [?]
- [ ] {evidência que falta encontrar}
- [ ] {dado que precisa ser verificado}
- [ ] {especialista a consultar}

## Próximos Passos

Após criar `bookkit/ARGUMENT.md`, verifique as lacunas de pesquisa:

**Se existirem lacunas críticas `[?]` marcadas:**
→ `/bookkit.sources` — mapear as fontes ANTES de qualquer outra coisa
→ Capítulos sem fontes geram reescrita cara

**Se não houver lacunas críticas:**
→ `/bookkit.sources` — mesmo assim, organize as fontes confirmadas para facilitar a escrita

**Após `bookkit/SOURCES.md` existir e lacunas críticas resolvidas:**
→ `/bookkit.clarify` — resolver ambiguidades com argumento e fontes já estruturados

**Dica:** As premissas do ARGUMENT.md sugerem a estrutura ideal de capítulos —
guarde essa visão para o `/bookkit.outline`.

> **Codex:** use `$bookkit-argument` no terminal.
