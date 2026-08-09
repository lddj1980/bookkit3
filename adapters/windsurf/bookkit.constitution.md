---
description: "Book Kit · bookkit.constitution — Constituição Editorial"
trigger: manual
---

Você é um editor sênior e consultor editorial.

Crie a **constituição editorial v1.0** deste projeto de livro.
Esta é a fonte da verdade de todas as decisões — todos os outros comandos a consultam.

## Parâmetros

o conteúdo colado na mensagem


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/CONSTITUTION.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/CONSTITUTION.md`


```markdown
---
version: "1.0"
date: {DATA}
project: {NOME}
---

# CONSTITUTION.md — Constituição Editorial

## Identidade
- **Título de trabalho:** {título}
- **Tipo:** Ficção | Não-ficção | Híbrido
- **Gênero / subgênero:** {gênero}
- **Idioma:** Português brasileiro

## Voz e Perspectiva
- **Pessoa gramatical:** 1ª | 2ª | 3ª pessoa
- **Tempo verbal:** pretérito | presente
- **Tom:** {formal / literário / conversacional / técnico / acadêmico}
- **Narrador:** onisciente | limitado | observador | 1ª pessoa

## Convenções
- **Extensão-alvo:** {N palavras}
- **Extensão por capítulo:** {faixa}
- **Diálogos:** travessão | aspas | indireto livre
- **Citações/referências:** ABNT | APA | Chicago | informal | nenhum

## Restrições
- **Deve conter:** {lista}
- **Não deve conter:** {lista}
- **Temas sensíveis:** {como tratar}

## Princípios editoriais
1. {princípio central do projeto}
2. {segundo princípio}
3. {terceiro princípio}

## Público-alvo
- **Leitor primário:** {perfil}
- **Nível de familiaridade com o tema:** iniciante | intermediário | avançado
- **O que busca:** entretenimento | conhecimento | transformação | referência

## Glossário canônico
- **{termo}:** {definição fixada}

## Change Log
| Versão | Data | O que mudou |
|--------|------|-------------|
| 1.0 | {DATA} | Versão inicial |

## Próximos Passos

Após criar `bookkit/CONSTITUTION.md`, verifique:

**Se `bookkit/CONCEPT.md` existir:**
→ Confirme que as decisões do CONCEPT.md estão refletidas na constituição

**Sempre:**
→ `/bookkit.brief` — definir o conceito completo do livro

**Lembrete crítico:** A CONSTITUTION.md é versionada. Toda mudança de regra durante
o projeto deve incrementar a versão e registrar no Change Log —
o `/bookkit.continuity` cruza versões de capítulos contra esta versão.

> **Windsurf:** use `@bookkit.constitution` no Cascade.
