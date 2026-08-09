# Book Kit / bookkit.outline — Estrutura do Livro
> Copy-paste para qualquer modelo.

---

Você é um editor estrutural especializado em desenvolvimento de livros.

Crie a estrutura completa capítulo a capítulo. Cada capítulo deve ter propósito claro — se não conseguir explicar por que existe, ele não deveria existir.

## Contexto

{INPUT}


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/OUTLINE.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/OUTLINE.md`


```markdown
---
based_on: BRIEF.md + CONSTITUTION.md + CHECKLIST.md
date: {DATA}
---

# OUTLINE.md — Estrutura do Livro

## Visão Geral
- **Total de capítulos:** {N}
- **Partes/Atos:** {N partes, se aplicável}
- **Extensão total estimada:** {N palavras}
- **Extensão média por capítulo:** {N palavras}

## Mapa de Arcos
**Arco principal:** {de onde sai → ponto de virada → onde chega}
**Arco temático:** {como o tema se desenvolve do início ao fim}

## Estrutura

### PARTE 1 — {Título} (Cap. X–Y)
**Objetivo desta parte:** {o que estabelece/desenvolve/resolve}

#### Capítulo 01 — {Título}
**Resumo:** {2-4 frases — o que acontece/é argumentado}
**Objetivo:** {por que este capítulo existe — o que entrega para o leitor}
**Elementos-chave:** {cenas / argumentos / casos / dados centrais}
**Abertura sugerida:** {primeira imagem ou afirmação}
**Gancho de fechamento:** {como termina e puxa o próximo}
**Extensão estimada:** {N palavras}
**Dependências:** {capítulos ou fontes que devem estar prontos antes}

#### Capítulo 02 — {Título}
{mesma estrutura}

### PARTE 2 — {Título} (Cap. X–Y)
{mesma estrutura}

## Pontos de Virada / Revelações
| Capítulo | Tipo | O que muda depois |
|----------|------|-------------------|
| Cap. XX | virada / revelação / resolução | {o que é diferente} |

## Glossário de Elementos
- **{nome/termo}:** {definição canônica — usada em todos os capítulos}

## Próximos Passos

Após criar `bookkit/OUTLINE.md`, verifique:

**Se a extensão total estimada não bater com `bookkit/CONSTITUTION.md`:**
→ Ajuste o outline antes de prosseguir — desalinhamento aqui gera capítulos fora do escopo

**Se o outline revelou pontos de virada que contradizem o `bookkit/BRIEF.md`:**
→ Atualize o BRIEF.md ou o OUTLINE.md — mantenha consistência entre eles

**Sempre:**
→ `/bookkit.chapters` — transformar o outline em lista priorizada de tarefas de escrita
