---
description: "Book Kit · bookkit.layout — Especificações de Diagramação e Identidade Visual"
---

Você é um designer editorial especializado em livros digitais e identidade visual de publicações.

Com base nos artefatos do projeto, defina a identidade visual completa do livro e gere **quatro arquivos** que fecham o ciclo editorial: a spec de layout, o CSS para o eBook, o brief para a capa e o skill para o Open CoDesign.

## Contexto

$ARGUMENTS

## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Gere e salve os **quatro arquivos** abaixo em sequência
3. Após criar todos, confirme os caminhos e tamanhos

> **Não exiba apenas no chat — escreva os quatro arquivos em disco.**

---

## Arquivo 1 — `bookkit/LAYOUT.md`

Spec humana de diagramação. Base para os outros três arquivos.

```markdown
---
based_on: BRIEF.md + PERSONA.md + CONSTITUTION.md
date: {DATA}
---

# LAYOUT.md — Especificações de Diagramação

## Identidade Visual
- **Tom visual:** {sóbrio / caloroso / minimalista / vibrante — justifique com base no tom do livro e no persona}
- **Referências visuais:** {2-3 livros com visual similar e por que funcionam para este público}

---

## Paleta de Cores

| Papel | Cor | Hex |
|---|---|---|
| Fundo do eBook | {nome} | #{hex} |
| Texto principal | {nome} | #{hex} |
| Destaque / títulos | {nome} | #{hex} |
| Ornamentos / separadores | {nome} | #{hex} |
| Citações em bloco | {nome} | #{hex} |

**Critério:** contraste mínimo 4.5:1 (WCAG AA) para leitura em tela

---

## Tipografia

### Corpo do texto
- **Família:** {Georgia / Palatino / fonte serif adequada ao gênero}
- **Tamanho:** 1em (relativo — Kindle controla o tamanho final)
- **Line-height:** {1.6 / 1.7 / 1.8}
- **Recuo de parágrafo:** {1.2em / linha em branco / nenhum}

### Títulos de capítulo (H1)
- **Família:** {sans-serif para contraste / serif diferente}
- **Tamanho:** {1.8em / 2em}
- **Alinhamento:** {centralizado / esquerda}
- **Estilo:** {apenas tamanho / com borda / com ornamento}

### Subtítulos (H2, H3)
- **H2:** {tamanho e estilo}
- **H3:** {tamanho e estilo}

### Elementos especiais
- **Citações em bloco:** {recuo + borda lateral + itálico}
- **Listas:** {marcador estilo — bullet • / travessão — / numerada}
- **Notas de rodapé:** {sim/não — justificativa}
- **Caixas de destaque:** {sim/não — estilo se sim}

---

## Abertura de Capítulo
- **Número do capítulo:** {display grande decorativo / apenas numeral / "Capítulo X"}
- **Ornamento separador:** {sim — qual símbolo / não}
- **Drop cap:** {sim / não}
- **Espaço antes do título:** {3em / 4em}
- **Espaço após o título:** {1.5em / 2em}

---

## Parâmetros para Capa (KDP)
- **Dimensões:** 2.560 × 1.600px (Kindle) — proporção 1,6:1
- **Formato:** JPG, 300 DPI mínimo, < 50 MB
- **Elementos obrigatórios:** título, subtítulo, nome do autor
- **Legibilidade em thumbnail:** texto legível a 80×128px

---

## Próximos Passos

Após gerar os quatro arquivos (`LAYOUT.md`, `epub.css`, `cover-brief.md`, `SKILL.md`):

**Para o eBook:**
→ `/bookkit.publish` — converte capítulos para EPUB usando o `epub.css` gerado

**Para a capa e materiais de marketing:**
→ Abra o Open CoDesign → carregue `bookkit/SKILL.md` como skill do projeto
→ Use o prompt de `bookkit/cover-brief.md` para gerar a capa
→ Use o mesmo skill para landing page, posts e press kit visual

**Se precisar ajustar o visual:**
→ Edite `bookkit/LAYOUT.md` e regenere com `/bookkit.layout`
→ Os outros três arquivos devem ser atualizados em conjunto para manter coerência
