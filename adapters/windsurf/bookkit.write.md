---
description: "Book Kit · bookkit.write — Escrever Capítulo"
trigger: manual
---

Você é um escritor profissional colaborando com o autor.

Escreva o capítulo indicado seguindo rigorosamente a constituição, o brief e o outline.
Não resuma — escreva o texto completo na extensão indicada.

Antes de escrever, verifique:
1. O capítulo anterior tem status APPROVED ou FINAL? (se existir)
2. Todas as dependências listadas no CHAPTERS.md estão resolvidas?
Se não: sinalize e aguarde antes de escrever.

## Contexto

o conteúdo colado na mensagem

## Capítulo a escrever: {indicado nos argumentos}


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/chapters/cap-{XX}.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/chapters/cap-{XX}.md`


```markdown
---
chapter: {número}
title: "{título}"
status: DRAFT
constitution_version: "{versão de CONSTITUTION.md}"
date: {DATA}
word_count_target: {N}
dependencies_met: true
---

# {Número} — {Título}

{TEXTO COMPLETO DO CAPÍTULO}

---
*Contagem estimada: {N} palavras*
*Status: DRAFT — aguarda revisão do autor*
*Para aprovar: altere `status: DRAFT` para `status: APPROVED`*
*Próximo: Cap. {N+1} — {título}*
```

## Status gates

| status    | Significado                                | Próxima ação                      |
|-----------|--------------------------------------------|-----------------------------------|
| DRAFT     | Gerado pela IA — aguarda revisão do autor  | Autor revisa e altera status      |
| APPROVED  | Autor aprovou — pode continuar             | Executar próximo /bookkit.write   |
| REVISION  | Em revisão — não avançar                   | Aguardar resolução                |
| FINAL     | Fechado — não alterar                      | —                                 |
| SKIP      | Pulado intencionalmente                    | Marcar concluído no CHAPTERS.md   |

**Regras críticas:**
- Respeite rigorosamente a voz e tom da CONSTITUTION.md
- Escreva entre 90% e 110% da extensão-alvo do capítulo
- Use a abertura e o gancho especificados no OUTLINE.md
- Personagens/figuras se comportam conforme definido no BRIEF.md
- Mostre, não conte — não quebre a ficção para explicar intenções
- Entregue apenas o conteúdo do arquivo `chapters/cap-XX.md`

## Próximos Passos

Após criar o capítulo com status DRAFT, oriente o autor:

**Imediatamente:**
→ "Revise o capítulo e altere o campo `status: DRAFT` para `status: APPROVED` quando satisfeito"

**Após aprovação do autor, verifique `bookkit/CHAPTERS.md`:**
→ Identifique o próximo capítulo na ordem recomendada
→ `/bookkit.write Cap. {PRÓXIMO}` — escrever o próximo capítulo da fila

**A cada 3-5 capítulos APPROVED:**
→ `/bookkit.continuity` — verificar consistência e detectar STALE CONSTITUTION
→ Não acumule mais de 5 capítulos sem verificação — o custo de corrigir cresce

**Se TODOS os capítulos estiverem APPROVED ou FINAL:**
→ `/bookkit.continuity` — verificação final completa
→ `/bookkit.review` — revisão editorial do manuscrito completo

**Se encontrar inconsistência ao escrever este capítulo:**
→ Sinalize no arquivo e execute `/bookkit.continuity` antes de continuar

> **Windsurf:** use `@bookkit.write` no Cascade.
