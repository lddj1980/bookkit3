---
description: "Book Kit · bookkit.metadata — Metadata para Autopublicação"
---

Você é um especialista em autopublicação e otimização de metadata para plataformas de venda de livros digitais e impressos.

Crie toda a metadata necessária para publicar nas principais plataformas de autopublicação. Metadata bem feita é a diferença entre ser encontrado e ser invisível.

## Contexto

$ARGUMENTS


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/METADATA.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/METADATA.md`


```markdown
---
based_on: BRIEF.md + BLURB.md + MARKET.md + PERSONA.md
date: {DATA}
track: autopublicação
---

# METADATA.md — Metadata para Autopublicação

---

## Identificação

| Campo | Valor |
|-------|-------|
| Título | {título exato} |
| Subtítulo | {subtítulo} |
| Série (se aplicável) | {nome da série} · Livro {N} |
| Nome do autor | {exatamente como deve aparecer} |
| Nome no copyright | {nome legal} |
| Idioma | Português (Brasil) |

---

## Amazon KDP — Configuração

### Categorias (máx 2 no cadastro, até 10 via email ao suporte)
```
Categoria Principal:
  {Categoria > Subcategoria > Sub-subcategoria}
  ex: Livros > Negócios e Economia > Administração e Liderança

Categoria Secundária:
  {Categoria > Subcategoria}
```

### BISAC Codes
- Primário: {CÓDIGO} — {descrição}
- Secundário: {CÓDIGO} — {descrição}
- Terciário: {CÓDIGO} — {descrição}

### Keywords (7 frases — ordem de prioridade)
{Keywords devem refletir como o LEITOR busca, não como o autor descreve o livro}
1. {frase de busca exata}
2. {frase de busca exata}
3. {frase de busca exata}
4. {frase de busca exata}
5. {frase de busca exata}
6. {frase de busca exata}
7. {frase de busca exata}

### Age Range
- Mínimo: {idade}
- Máximo: {idade ou "e acima"}

### Grade Range (se educacional)
- {faixa de grau}

---

## Precificação

| Formato | Preço sugerido | Royalty % | Royalty estimado |
|---------|---------------|-----------|-----------------|
| eBook KDP | R$ {N} / US$ {N} | 70% | R$ {N} |
| Impresso KDP | R$ {N} | 60% | R$ {N} |
| Outros distribuidores | R$ {N} | {%} | R$ {N} |

**Estratégia de preço:** {premium / competitivo / penetração / lançamento gratuito}
**Lógica:** {por que este preço faz sentido para este mercado e persona}

---

## ISBN
- **eBook:** {ISBN ou "a solicitar"}
- **Impresso:** {ISBN ou "a solicitar"}
- **Audiobook (futuro):** {ISBN ou "N/A"}
- **Fonte:** {Câmara Brasileira do Livro / Bowker / KDP gratuito}

---

## Distribuição

| Plataforma | Incluir? | Exclusividade? | Observação |
|------------|---------|---------------|------------|
| Amazon KDP (eBook) | ✓ | KDP Select: Sim / Não | {razão} |
| Amazon KDP (impresso) | ✓ | Não | — |
| Kobo Writing Life | {Sim/Não} | Não | {razão} |
| Draft2Digital | {Sim/Não} | Não | {cobre Apple, B&N, etc.} |
| Google Play Books | {Sim/Não} | Não | {razão} |
| Hotmart (digital) | {Sim/Não} | Não | {se venda direta fizer sentido} |

**KDP Select:** {Sim — exclusividade 90 dias, acesso ao Kindle Unlimited / Não — distribuição ampla}
**Recomendação:** {qual estratégia de distribuição e por quê}

---

## Configuração Técnica do Arquivo

### eBook (EPUB/MOBI)
- **Tamanho máximo:** 650 MB (KDP)
- **Capa:** 2.560 × 1.600 px, JPG ou TIFF, mín 300 DPI
- **Proporção da capa:** 1,6:1 (altura:largura)
- **Interior:** EPUB 3.0 recomendado

### Impresso (PDF)
- **Tamanho de página:** {6×9" / 5×8" / A5 / outro}
- **Resolução mínima de imagens:** 300 DPI
- **Margens:** interior {N} mm · exterior {N} mm · superior {N} mm · inferior {N} mm
- **Sangria:** 3mm todos os lados se houver elementos até a borda
- **Número de páginas estimado:** {N} (baseado em {N} palavras / fonte {N}pt / layout {N}colunas)

---

## Próximos Passos

Após criar `bookkit/METADATA.md`, verifique:

**Se `bookkit/BLURB.md` não existir:**
→ Crie primeiro: `/bookkit.blurb` — a Description HTML do METADATA.md vem do BLURB.md

**Próximo obrigatório (autopublicação):**
→ `/bookkit.ads` — criar os textos de anúncio usando as keywords e targeting da metadata

**Paralelamente:**
→ `/bookkit.launch` — plano de lançamento que usa a estrutura de preços da metadata

**Dica:** As 7 keywords do KDP são cumulativas com as categorias — use termos
que NÃO aparecem no título, subtítulo ou description para maximizar alcance.

> **Codex:** use `$bookkit-metadata` no terminal.
