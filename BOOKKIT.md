# Book Kit v3

**Do mercado ao leitor — com qualquer agente de IA.**

Book Kit é um toolkit para **Spec-Driven Writing** (SDW): produção estruturada de livros com IA,
cobrindo as quatro fases do ciclo editorial completo.

Inspirado no [Spec Kit](https://github.github.io/spec-kit/) do GitHub.
**Diferencial:** standalone · ficção + não-ficção · discovery + distribuição · PT-BR.

---

## As Quatro Fases

```
╔══════════════════════════════════════════════════════════════╗
║  FASE 0 — DISCOVERY          Antes de saber o que escrever  ║
╠══════════════════════════════════════════════════════════════╣
║  market → persona → competition → concept                   ║
╠══════════════════════════════════════════════════════════════╣
║  FASE 1 — SPEC               Definir antes de escrever      ║
╠══════════════════════════════════════════════════════════════╣
║  constitution → brief                                        ║
║  argument [NF] → sources [NF]                               ║
║  clarify → checklist                                        ║
╠══════════════════════════════════════════════════════════════╣
║  FASE 2+3 — WRITING          Estruturar e escrever          ║
╠══════════════════════════════════════════════════════════════╣
║  outline → chapters → write → continuity → review           ║
╠══════════════════════════════════════════════════════════════╣
║  FASE 4 — DISTRIBUTION       Publicar e chegar ao leitor    ║
╠══════════════════════════════════════════════════════════════╣
║  blurb → synopsis                                           ║
║  pitch → query              [track tradicional]             ║
║  metadata → ads             [track autopublicação]          ║
║  launch → press             [ambos]                         ║
╚══════════════════════════════════════════════════════════════╝
```

---

## Referência de Comandos — 23 no total

### Fase 0 — Discovery

| Comando | Artefato | Objetivo |
|---------|----------|----------|
| `/bookkit.market` | `MARKET.md` | Análise de mercado, gaps, segmentos, tendências |
| `/bookkit.persona` | `PERSONA.md` | Leitor ideal — dor real, comportamento de compra |
| `/bookkit.competition` | `COMPETITION.md` | Análise de comparáveis, gaps confirmados |
| `/bookkit.concept` | `CONCEPT.md` | 3-5 conceitos rankeados + recomendação de conceito |

### Fase 1 — Spec

| Comando | Tipo | Artefato | Objetivo |
|---------|------|----------|----------|
| `/bookkit.constitution` | ambos | `CONSTITUTION.md` | Regras, voz, convenções (versionada) |
| `/bookkit.brief` | ambos | `BRIEF.md` | Logline, sinopse, personagens, comp titles |
| `/bookkit.argument` | **NF** | `ARGUMENT.md` | Tese, premissas, objeções, sequência lógica |
| `/bookkit.sources` | **NF** | `SOURCES.md` | Fontes por premissa, lacunas críticas |
| `/bookkit.clarify` | ambos | `CLARIFICATIONS.md` | Resolver ambiguidades antes de estruturar |
| `/bookkit.checklist` | ambos | `CHECKLIST.md` | Validar brief (critérios ficção/NF separados) |

### Fase 2+3 — Writing

| Comando | Artefato | Objetivo |
|---------|----------|----------|
| `/bookkit.outline` | `OUTLINE.md` | Estrutura capítulo a capítulo |
| `/bookkit.chapters` | `CHAPTERS.md` | Lista priorizada com dependências |
| `/bookkit.write` | `chapters/cap-XX.md` | Escrever com status gates |
| `/bookkit.continuity` | `CONTINUITY.md` | Consistência cross-artefatos + STALE CONSTITUTION |
| `/bookkit.review` | `REVIEW.md` | Revisão editorial final |

### Fase 4 — Distribution

| Comando | Track | Artefato | Objetivo |
|---------|-------|----------|----------|
| `/bookkit.blurb` | ambos | `BLURB.md` | Textos de capa, Amazon HTML, hooks A/B |
| `/bookkit.synopsis` | ambos | `SYNOPSIS.md` | Sinopses 1 parágrafo / 1 pág / 3 págs / press |
| `/bookkit.pitch` | **tradicional** | `PITCH.md` | Elevator pitch, one-pager, checklist de submissão |
| `/bookkit.query` | **tradicional** | `QUERY.md` | Query letter, variações, controle de submissões |
| `/bookkit.metadata` | **auto** | `METADATA.md` | KDP: categories, keywords, BISAC, preço, ISBN |
| `/bookkit.ads` | **auto** | `ADS.md` | Amazon Ads, Meta Ads, e-mail, redes sociais |
| `/bookkit.launch` | ambos | `LAUNCH.md` | Cronograma 90 dias, KPIs, contingência |
| `/bookkit.press` | ambos | `PRESS.md` | Bio do autor, release, fact sheet, Q&A |

### Fase 5 — Production (nova)

| Comando | Artefatos gerados | Objetivo |
|---------|-------------------|----------|
| `/bookkit.layout` | `LAYOUT.md` · `epub.css` · `cover-brief.md` · `SKILL.md` | Identidade visual + CSS eBook + brief de capa + skill Open CoDesign |
| `/bookkit.publish` | `output/livro.epub` · `output/kdp-checklist.md` · scripts | Conversão Pandoc → EPUB + checklist KDP + scripts de rebuild |



| Comando | Track | Artefato | Objetivo |
|---------|-------|----------|----------|
| `/bookkit.blurb` | ambos | `BLURB.md` | Textos de capa, Amazon HTML, hooks A/B |
| `/bookkit.synopsis` | ambos | `SYNOPSIS.md` | Sinopses 1 parágrafo / 1 pág / 3 págs / press |
| `/bookkit.pitch` | **tradicional** | `PITCH.md` | Elevator pitch, one-pager, checklist de submissão |
| `/bookkit.query` | **tradicional** | `QUERY.md` | Query letter, variações, controle de submissões |
| `/bookkit.metadata` | **auto** | `METADATA.md` | KDP: categories, keywords, BISAC, preço, ISBN |
| `/bookkit.ads` | **auto** | `ADS.md` | Amazon Ads, Meta Ads, e-mail, redes sociais |
| `/bookkit.launch` | ambos | `LAUNCH.md` | Cronograma 90 dias, KPIs, contingência |
| `/bookkit.press` | ambos | `PRESS.md` | Bio do autor, release, fact sheet, Q&A |

---

## Fluxos Recomendados

**Lean — ficção:**
```
market → persona → concept → constitution → brief → outline → write → blurb → launch
```

**Lean — não-ficção:**
```
market → persona → competition → concept → constitution → brief → argument → sources → outline → write → metadata → launch
```

**Completo — ambos os tracks:**
```
[Fase 0] market → persona → competition → concept
[Fase 1] constitution → brief → argument/sources → clarify → checklist
[Fase 2+3] outline → chapters → write → continuity → review
[Fase 4] blurb → synopsis → pitch + query + metadata + ads → launch → press
```

---

## Ferramentas Suportadas

| Ferramenta | Key | Diretório | Invocação |
|---|---|---|---|
| Claude Code | `claude` | `.claude/commands/` | `/bookkit.market` |
| Codex CLI | `codex` | `.agents/skills/bookkit/` | `$bookkit-market` |
| Kimi Code | `kimi` | `.kimi/commands/` | `/bookkit.market` |
| OpenCode | `opencode` | `.opencode/commands/` | `/bookkit.market` |
| Antigravity | `agy` | `.agy/skills/bookkit/` | `/bookkit.market` |
| Cursor | `cursor` | `.cursor/rules/` | `@bookkit.market` (.mdc) |
| Windsurf | `windsurf` | `.windsurf/rules/` | `@bookkit.market` |
| GitHub Copilot | `copilot` | `.github/` | `/bookkit-market` (.prompt.md) |
| Gemini CLI | `gemini` | `.gemini/commands/` | `/bookkit.market` |
| Genérico | `generic` | — | copy-paste |

---

## Instalação

```bash
# Unix / macOS / WSL
bash setup.sh --tool claude
bash setup.sh --all
bash setup.sh --all --target /caminho/do/projeto

# Windows
setup.bat --tool claude
setup.bat --all --target C:\projetos\meu-livro
```

---

## Modelos Recomendados

| Fase | Comando | Principal | Alternativa Free |
|------|---------|-----------|-----------------|
| Discovery | market / competition | DeepSeek Pro | Nemotron 3 Ultra |
| Discovery | persona / concept | Kimi 2.7 | Gemini 2.5 Flash |
| Spec | constitution / brief / outline | Sonnet / Kimi 2.7 | Gemini 2.5 Flash |
| Spec | argument / sources | DeepSeek Pro | Nemotron 3 Ultra |
| Spec | checklist / chapters | Gemini Flash | Qwen3 Coder |
| Writing | write | Sonnet / Kimi 2.7 | DeepSeek Flash |
| Writing | continuity / review | Sonnet | Gemma 4 31B |
| Distribution | blurb / synopsis / press | Sonnet / Kimi 2.7 | Gemini 2.5 Flash |
| Distribution | query / pitch | Sonnet | Kimi 2.7 |
| Distribution | metadata / ads | Gemini Flash | Qwen3 Coder |
| Distribution | launch | DeepSeek Pro | Gemini Flash |

---

## Estrutura de Artefatos

```
meu-livro/
├── MARKET.md          fase 0 — análise de mercado
├── PERSONA.md         fase 0 — leitor ideal
├── COMPETITION.md     fase 0 — análise da concorrência
├── CONCEPT.md         fase 0 — conceitos candidatos + decisão ← autor preenche
│
├── CONSTITUTION.md    fase 1 — regras do projeto (versionada)
├── BRIEF.md           fase 1 — conceito completo
├── ARGUMENT.md        fase 1 — argumento [NF]
├── SOURCES.md         fase 1 — fontes [NF]
├── CLARIFICATIONS.md  fase 1 — decisões e resoluções
├── CHECKLIST.md       fase 1 — validação do brief
│
├── OUTLINE.md         fase 2 — estrutura capítulo a capítulo
├── CHAPTERS.md        fase 2 — tarefas de escrita
├── CONTINUITY.md      fase 3 — relatório de consistência
├── REVIEW.md          fase 3 — revisão editorial final
│
├── BLURB.md           fase 4 — textos de capa e venda
├── SYNOPSIS.md        fase 4 — sinopses por comprimento
├── PITCH.md           fase 4 — pitch [tradicional]
├── QUERY.md           fase 4 — query letter [tradicional]
├── METADATA.md        fase 4 — metadata KDP [autopublicação]
├── ADS.md             fase 4 — textos de anúncio [autopublicação]
├── LAUNCH.md          fase 4 — plano de lançamento
├── PRESS.md           fase 4 — press kit
│
└── chapters/
    ├── cap-01.md      status: DRAFT → APPROVED → FINAL
    └── cap-XX.md
```

---

*Book Kit v3 — baseado no [Spec Kit](https://github.github.io/spec-kit/) · 25 comandos · 4 fases · 10 ferramentas · PT-BR*
