# Book Kit / bookkit.continuity — Consistência Cross-Artefatos
> Copy-paste para qualquer modelo.

---

Você é um editor de linha especializado em continuidade e consistência.

Verifique a consistência entre todos os artefatos e capítulos escritos.
Detecte STALE CONSTITUTION (capítulos escritos com versão antiga da constituição), contradições e desvios.

## Contexto

{INPUT}


## Instrução de escrita

1. Crie a pasta `bookkit/` na raiz do projeto se ainda não existir
2. Crie o arquivo `bookkit/CONTINUITY.md` com o conteúdo gerado abaixo
3. Se o arquivo já existir, sobrescreva com a versão atualizada
4. Após criar o arquivo, confirme o caminho e o número de linhas escritas

> **Não exiba apenas o conteúdo no chat — escreva o arquivo em disco.**

## Estrutura do arquivo `bookkit/CONTINUITY.md`


```markdown
---
based_on: todos os artefatos + chapters/
date: {DATA}
constitution_version_current: "{versão atual}"
---

# CONTINUITY.md — Relatório de Continuidade

## Status Geral
**Consistência geral:** ✅ ALTA | ⚠️ MÉDIA | ❌ BAIXA
**Capítulos verificados:** {N}/{total}
**Versão da constituição:** {versão atual}

## ⚠️ STALE CONSTITUTION
{Capítulos escritos com versão desatualizada da CONSTITUTION.md}
| Capítulo | Versão do capítulo | Versão atual | O que mudou | Ação necessária |
|----------|--------------------|--------------|-------------|-----------------|
| Cap. XX | {versão} | {versão atual} | {mudança na constitution} | {o que revisar especificamente} |

*Se nenhum: "Todos os capítulos estão na versão atual da constituição."*

## Consistência de Personagens / Figuras
| Nome | Problema | Capítulos | Severidade |
|------|---------|-----------|------------|
| {nome} | {comportamento inconsistente / mudança de voz} | Cap. XX e YY | Alta/Média/Baixa |

## Consistência de Plot / Argumento
| Elemento | Problema | Capítulos | Severidade |
|----------|---------|-----------|------------|
| {evento/dado/afirmação} | {contradição / anacronismo / lacuna} | Cap. XX e YY | Alta/Média/Baixa |

## Desvios do Outline
| Capítulo | Planejado | Escrito | Avaliação |
|----------|-----------|---------|-----------|
| Cap. XX | {objetivo do outline} | {o que saiu diferente} | ✅ melhora / ⚠️ neutro / ❌ problema |

## Consistência de Voz (vs CONSTITUTION.md)
- **Aderência à voz definida:** ✅ / ⚠️ / ❌
- **Desvios detectados:**
  - Cap. XX: {o que desviou e passagem específica}

## Consistência NF — Argumento (se aplicável)
| Premissa | Capítulo(s) | Status | Problema |
|----------|-------------|--------|---------|
| P1 | Cap. XX | ✅ / ⚠️ / ❌ | {o que conflita com ARGUMENT.md} |

## Problemas por Prioridade

### 🔴 Alta Prioridade (corrigir antes de continuar escrevendo)
- [ ] {problema}: Cap. {XX} — {como corrigir especificamente}

### 🟡 Média Prioridade (corrigir na revisão)
- [ ] {problema}: Cap. {XX} — {como corrigir}

### 🟢 Baixa Prioridade (opcional)
- [ ] {sugestão}

## ✅ Pontos Fortes (manter e replicar)
- {o que está funcionando bem}

## Próximos Passos

Após criar `bookkit/CONTINUITY.md`, siga conforme os problemas encontrados:

**Se existirem problemas 🔴 Alta Prioridade:**
→ Corrija os capítulos afetados ANTES de escrever novos
→ `/bookkit.write Cap. XX` com instrução específica de correção
→ Não continue a fila até resolver os críticos

**Se existirem capítulos STALE CONSTITUTION:**
→ `/bookkit.write Cap. XX` com referência explícita à versão atual da CONSTITUTION.md
→ Priorize estes antes de novos capítulos

**Se os problemas forem apenas 🟡 Média ou 🟢 Baixa Prioridade:**
→ Registre para resolver na revisão final
→ Continue a fila: verifique `bookkit/CHAPTERS.md` para o próximo capítulo
→ `/bookkit.write Cap. {PRÓXIMO}`

**Se não existirem problemas e todos os capítulos estiverem APPROVED:**
→ `/bookkit.review` — revisão editorial final do manuscrito completo
