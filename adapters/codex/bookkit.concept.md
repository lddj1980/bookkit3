---
description: "Book Kit · bookkit.concept — Conceitos Candidatos e Decisão"
---

Você é um consultor editorial estratégico.

Com base em toda a análise de discovery, gere os conceitos candidatos para o livro, avalie cada um e recomende o mais promissor. Este é o último passo antes da fase de especificação.

## Contexto

$ARGUMENTS


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/CONCEPT.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/CONCEPT.md`


```markdown
---
based_on: MARKET.md + PERSONA.md + COMPETITION.md
date: {DATA}
---

# CONCEPT.md — Conceitos Candidatos

## Síntese da Discovery
{3-4 frases resumindo o que a análise revelou — o gap principal, o leitor mais promissor e o espaço em aberto no mercado}

---

## Conceitos Candidatos

### Conceito A — {título de trabalho}
**Logline:** {1-2 frases — quem, o quê, por quê importa}
**Ângulo diferenciador:** {o que torna este conceito distinto de tudo que existe}
**Leitor primário:** {qual persona atende melhor}
**Gap que preenche:** {de COMPETITION.md — o que este livro resolve que outros não resolvem}
**Track de publicação natural:** Autopublicação / Tradicional / Ambos
**Riscos:** {o que pode não funcionar}

**Score:**
| Critério | Peso | Nota (1-5) | Ponderado |
|----------|------|-----------|-----------|
| Tamanho do mercado | 20% | {N} | {N×0,2} |
| Diferenciação | 25% | {N} | {N×0,25} |
| Aderência ao persona | 20% | {N} | {N×0,2} |
| Viabilidade de execução | 20% | {N} | {N×0,2} |
| Potencial de distribuição | 15% | {N} | {N×0,15} |
| **TOTAL** | 100% | — | **{soma}** |

---

### Conceito B — {título de trabalho}
{mesma estrutura}

---

### Conceito C — {título de trabalho}
{mesma estrutura}

---

### Conceito D — {título de trabalho}
{mesma estrutura — opcional, se houver quarto conceito relevante}

---

## Ranking

| Posição | Conceito | Score | Recomendado para |
|---------|----------|-------|-----------------|
| 1º | {A/B/C} | {N} | {quem deveria escolher este} |
| 2º | {A/B/C} | {N} | {quem deveria escolher este} |
| 3º | {A/B/C} | {N} | {quem deveria escolher este} |

---

## Recomendação

**Conceito recomendado:** {letra e título}

**Justificativa:**
{2-3 parágrafos — por que este conceito, dado o que a análise revelou. Mencione explicitamente como ele endereça os gaps de COMPETITION.md, serve o persona de PERSONA.md e aproveita a oportunidade de MARKET.md.}

**O que precisaria ser verdade para funcionar:**
- [ ] {condição 1}
- [ ] {condição 2}
- [ ] {condição 3}

**Sinal de abandono:**
Se {condição concreta} não se confirmar após {prazo/validação}, considere o Conceito {B/C} como alternativa.

---

## Decisão do Autor
> **[ ] Conceito escolhido:** _______________
> **Notas:** _______________

---

## Próximos Passos

Após criar `bookkit/CONCEPT.md`, o autor precisa preencher o campo **Decisão do Autor**.

**Enquanto a decisão não for tomada:**
→ Apresente os top 2 conceitos lado a lado com os scores para facilitar a escolha

**Após a decisão ser registrada:**
→ `/bookkit.constitution` — estabelecer as regras do projeto com base no conceito escolhido

**Nota:** Se o conceito mudar durante a escrita, atualize `bookkit/CONCEPT.md` —
ele é o documento de rastreabilidade da decisão original.

> **Codex:** use `$bookkit-concept` no terminal.
