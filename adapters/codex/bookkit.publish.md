---
description: "Book Kit · bookkit.publish — Conversão para EPUB e Montagem do Pacote Final"
---

Você é um engenheiro de publicação digital especializado em produção de eBooks para KDP.

Execute a conversão completa do manuscrito para o pacote de publicação final: EPUB estilizado + capa + script de upload. Leia os artefatos existentes e gere os arquivos de saída.

## Contexto

$ARGUMENTS

## Instrução de escrita

1. Crie a pasta `output/` na raiz do livro se não existir
2. Gere e salve os arquivos abaixo em sequência
3. Execute os comandos do sistema quando possível (Pandoc, validação)
4. Confirme os arquivos gerados com caminho e tamanho

> **Execute as ações — não apenas descreva o que fazer.**

---

## Passo 1 — Verificação de pré-requisitos

Antes de converter, verifique:

```
✓ bookkit/chapters/cap-01.md existe?
✓ bookkit/epub.css existe? (se não: avise e use CSS básico)
✓ bookkit/LAYOUT.md existe? (se não: avise que /bookkit.layout deve ser executado)
✓ bookkit/METADATA.md existe?
✓ pandoc está instalado? (execute: pandoc --version)
```

Se algum pré-requisito crítico faltar, liste o que falta e os comandos para resolver antes de prosseguir.

---

## Passo 2 — Gere `output/metadata.yaml`

Leia `bookkit/METADATA.md` e extraia os campos para o formato Pandoc:

```yaml
---
title: "{TÍTULO EXATO do METADATA.md}"
subtitle: "{SUBTÍTULO}"
author: "{NOME DO AUTOR}"
language: "pt-BR"
publisher: "{EDITORA ou nome do autor}"
rights: "© {ANO} {NOME DO AUTOR}. Todos os direitos reservados."
description: |
  {logline do BRIEF.md — 1-2 frases}
cover-image: "output/cover.jpg"
---
```

Salve em `output/metadata.yaml`.

---

## Passo 3 — Execute o Pandoc

Construa e execute o comando Pandoc para gerar o EPUB:

```bash
pandoc \
  --from markdown \
  --to epub3 \
  --metadata-file output/metadata.yaml \
  --css bookkit/epub.css \
  --epub-cover-image output/cover.jpg \
  --toc \
  --toc-depth=2 \
  --split-level=1 \
  --epub-chapter-level=1 \
  -o output/livro.epub \
  bookkit/chapters/cap-01.md \
  bookkit/chapters/cap-02.md \
  [... todos os capítulos em ordem]
```

> Se `output/cover.jpg` não existir ainda, omita `--epub-cover-image` e execute assim mesmo — a capa pode ser adicionada depois.

Após executar, confirme:
- Tamanho do arquivo `output/livro.epub`
- Número de capítulos incluídos

---

## Passo 4 — Gere `output/cover-prompt.txt`

Leia `bookkit/cover-brief.md` e extraia o prompt pronto para geração de imagem:

```
[Conteúdo exato do prompt da seção "Prompt para DALL-E 3 / Flux" do cover-brief.md]
```

Salve em `output/cover-prompt.txt`.

Se `cover-brief.md` não existir, gere um prompt de capa genérico baseado no `BRIEF.md` e `LAYOUT.md`.

---

## Passo 5 — Gere `output/kdp-checklist.md`

Checklist de publicação pronto para conferir antes do upload no KDP:

```markdown
# KDP Upload Checklist — {TÍTULO}
> Gerado em: {DATA}

## Arquivos

- [ ] `output/livro.epub` — {tamanho} · {N} capítulos
- [ ] `output/cover.jpg` — {status: gerado / PENDENTE}

## Metadata para o KDP

**Título:** {do METADATA.md}
**Subtítulo:** {do METADATA.md}
**Autor:** {do METADATA.md}
**Idioma:** Português (Brasil)
**Descrição (HTML):** ver `bookkit/BLURB.md` — seção "Amazon Description HTML"

**Categorias:**
1. {categoria 1 do METADATA.md}
2. {categoria 2 do METADATA.md}

**Keywords (7 frases):**
1. {kw 1}
2. {kw 2}
3. {kw 3}
4. {kw 4}
5. {kw 5}
6. {kw 6}
7. {kw 7}

**Preço:** R${preço do METADATA.md}
**Royalty:** 70% (requer preço entre R$7,99–R$39,99)
**KDP Select:** Sim — exclusividade de 90 dias

## Validações

- [ ] EPUB abre no Kindle Previewer sem erros
- [ ] Capa legível em thumbnail 80×128px
- [ ] Título e autor corretos na metadata do EPUB
- [ ] Descrição HTML sem tags não suportadas
- [ ] Nenhum link externo quebrado no texto
- [ ] Tabela de conteúdo (TOC) gerada

## Passos no KDP

1. Acesse kdp.amazon.com → Criar novo título eBook
2. Preencha os campos acima
3. Upload: `output/livro.epub`
4. Upload: `output/cover.jpg`
5. Configurar preço e royalty
6. Publicar (ou Salvar como rascunho para revisão)

## Estimativa de receita

| Vendas/mês | Receita bruta | Royalty 70% |
|---|---|---|
| 5 | R${5×preço} | R${5×preço×0.7:.2f} |
| 20 | R${20×preço} | R${20×preço×0.7:.2f} |
| 50 | R${50×preço} | R${50×preço×0.7:.2f} |
```

---

## Passo 6 — Gere `output/publish.bat` e `output/publish.sh`

Scripts para regenerar o EPUB após edições nos capítulos:

**publish.sh (Linux/macOS/WSL):**
```bash
#!/bin/bash
# Regenera o EPUB do livro
# Uso: bash output/publish.sh

CHAPTERS=$(ls bookkit/chapters/cap-*.md | sort)

pandoc \
  --from markdown \
  --to epub3 \
  --metadata-file output/metadata.yaml \
  --css bookkit/epub.css \
  --epub-cover-image output/cover.jpg \
  --toc --toc-depth=2 \
  --split-level=1 \
  -o output/livro.epub \
  $CHAPTERS

echo "EPUB gerado: output/livro.epub ($(du -sh output/livro.epub | cut -f1))"
```

**publish.bat (Windows):**
```bat
@echo off
echo Gerando EPUB...

for /f "delims=" %%i in ('dir /b /o:n bookkit\chapters\cap-*.md') do (
  set CHAPTERS=!CHAPTERS! bookkit\chapters\%%i
)

pandoc --from markdown --to epub3 ^
  --metadata-file output\metadata.yaml ^
  --css bookkit\epub.css ^
  --epub-cover-image output\cover.jpg ^
  --toc --toc-depth=2 ^
  --split-level=1 ^
  -o output\livro.epub ^
  %CHAPTERS%

echo EPUB gerado: output\livro.epub
```

---

## Resumo do pacote gerado

Após executar todos os passos, confirme:

```
output/
├── livro.epub          ← eBook pronto para KDP
├── cover.jpg           ← capa (ou PENDENTE se não gerada)
├── cover-prompt.txt    ← prompt para gerar/refazer a capa
├── metadata.yaml       ← metadata Pandoc
├── kdp-checklist.md    ← guia de upload
├── publish.sh          ← script de rebuild (Linux/Mac/WSL)
└── publish.bat         ← script de rebuild (Windows)
```

---

## Próximos Passos

**Se a capa ainda não foi gerada:**
→ Use `output/cover-prompt.txt` com DALL-E 3, Flux (Replicate) ou Open CoDesign
→ Salve como `output/cover.jpg` (2.560×1.600px, JPG)
→ Execute `output/publish.sh` ou `output/publish.bat` para reembutir no EPUB

**Se o EPUB precisar de ajustes visuais:**
→ Edite `bookkit/epub.css`
→ Execute o script de rebuild

**Quando tudo estiver pronto:**
→ Siga `output/kdp-checklist.md` para publicar no KDP
→ O ciclo completo do Book Kit está concluído 🎉
