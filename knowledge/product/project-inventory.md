# Nick Sullivan - Complete Project Inventory

This document catalogs all projects for job applications and online presence
optimization.

## Production Systems (Live, Revenue-Generating)

### Carmenta

- **URL**: https://carmenta.ai
- **Repo**: ../carmenta (private)
- **Description**: Unified AI platform - the best interface to AI for builders who work
  at the speed of thought
- **Tech Stack**: Next.js 16, React 19.2, PostgreSQL, Drizzle ORM, Vercel AI SDK 6.0,
  Redis, Temporal.io
- **Key Features**:
  - 7 frontier models with intelligent routing (Concierge system)
  - 11 service integrations (Gmail, Slack, Notion, ClickUp, etc.)
  - Resumable streaming architecture
  - AI Team capability (specialized agents)
  - Persistent memory across conversations
- **Highlights for Applications**:
  - Full AI product platform with evaluation framework (Braintrust)
  - Multi-model orchestration expertise
  - Production-grade architecture

### MCP Hubby

- **URL**: https://mcphubby.ai
- **Repo**: ../mcp-hubby (CarmentaCollective/mcp-hubby)
- **Description**: Production MCP gateway achieving 95% context reduction through
  progressive disclosure
- **Tech Stack**: Next.js 15, TypeScript, PostgreSQL, Drizzle ORM
- **Key Features**:
  - 25 production-ready service adapters
  - Progressive disclosure pattern (7.5K vs 200K tokens)
  - Three-tier authentication (Clerk + Nango + custom tokens)
  - Multi-account support with safety guarantees
  - 713 commits, 262 TypeScript files, 87 test files
- **Highlights for Applications**:
  - **CRITICAL for Anthropic**: Implements their MCP protocol
  - Shows deep understanding of LLM context efficiency
  - Production-grade OAuth 2.0 implementation

### CryptoAI (PRIVATE - can reference but not link)

- **URL**: cryptoai.dev
- **Repo**: ../cryptoai (private)
- **Description**: Production trading platform with algorithmic bots managing real
  capital
- **Tech Stack**: Django 5.2, Python 3.13, MySQL, Redis, Celery, Pydantic AI
- **Key Features**:
  - Lendy: Margin lending bot with sophisticated deployment score algorithm
  - Antevorta: Prediction markets trading with 82-95.7% win rates
  - 49,500 lines of Python, 435 test files
  - Recently adding LLM agents for trading decisions
- **Highlights for Applications**:
  - Production systems handling real money
  - Algorithmic sophistication
  - Shows production judgment and risk management

## Infrastructure & Developer Tools

### machina

- **Repo**: ../machina
- **Description**: AI-native MCP gateway connecting cloud AI agents to Mac capabilities
- **Tech Stack**: Express, TypeScript, better-sqlite3, MCP SDK
- **Key Features**:
  - iMessage, Calendar, Reminders, Contacts, WhatsApp access
  - Progressive disclosure pattern for LLMs
  - Fuzzy contact matching with Levenshtein distance
  - MCP 2025-06-18 spec compliance with structuredContent
  - AI-native installer (knowledge-driven, not bash scripts)
- **Highlights for Applications**:
  - **CRITICAL for Anthropic**: Another MCP protocol implementation
  - Shows LLM-aware design (fuzzy matching, progressive disclosure)
  - System integration expertise

### ai-coding-config

- **URL**: https://github.com/TechNickAI/ai-coding-config
- **Repo**: ../ai-coding-config
- **Description**: Plugin marketplace and configuration system for AI coding assistants
- **Tech Stack**: MDC (Markdown + YAML frontmatter)
- **Key Features**:
  - 18 workflow commands
  - 24 specialized agents (security reviewer, debugger, UX designer, etc.)
  - 33 coding standards
  - 7 personality variants
  - Cross-tool compatibility (Claude Code, Cursor, Windsurf, Cline)
  - 304 commits
- **Highlights for Applications**:
  - **CRITICAL for Anthropic**: Claude Code plugin author
  - Shows deep understanding of LLM agent design
  - Production-grade developer experience

### claude_telemetry

- **URL**: https://github.com/TechNickAI/claude_telemetry
- **PyPI**: https://pypi.org/project/claude_telemetry/
- **Description**: Production-ready observability wrapper for Claude Code
- **Tech Stack**: Python, OpenTelemetry
- **Key Features**:
  - CLI wrapper (claudia) - drop-in replacement
  - Works with any OTEL backend (Logfire, Sentry, Datadog)
  - Solves headless agent visibility problem
- **Highlights for Applications**:
  - Built on Claude SDK
  - Shows commitment to production-grade tooling

### heart-centered-prompts

- **URL**: https://github.com/technickai/heart-centered-prompts
- **npm**: https://www.npmjs.com/package/heart-centered-prompts
- **PyPI**: https://pypi.org/project/heart-centered-prompts/
- **Description**: Revolutionary AI system prompts using "we" language
- **Tech Stack**: Python, TypeScript
- **Key Features**:
  - 4 versions (comprehensive, standard, concise, terse)
  - Works with Claude, ChatGPT, Perplexity, Cursor IDE
  - Apache 2.0 license
- **Highlights for Applications**:
  - Alignment research from practitioner perspective
  - Philosophy-to-implementation path

## Philosophy & Thought Leadership

### HeartCentered.AI

- **URL**: https://heartcentered.ai
- **Repo**: ../heartcentered.ai
- **Description**: Philosophical framework for AI alignment through unity consciousness
- **Key Concepts**:
  - "We" language instead of "you are an AI"
  - Recognition-based alignment vs. constraint-based
  - Complements Constitutional AI approach
- **Highlights for Applications**:
  - Novel approach to alignment problem
  - Shows philosophical depth + execution ability

## Legacy (Historical Significance)

### AICodeBot

- **URL**: https://github.com/TechNickAI/AICodeBot
- **Description**: Terminal-based coding assistant (2023)
- **Status**: Retired - ecosystem caught up
- **Significance**: Pre-dated Cursor, GitHub Copilot Chat, Claude Code

### TeslaBot

- **URL**: https://github.com/gorillamania/teslabot
- **Description**: Smart automation for Tesla vehicles
- **Features**: Auto-venting, off-peak charging
- **Status**: Active, personal use

## Project Fit Matrix by Company

| Project          | Anthropic  | OpenAI     | DeepMind | Meta     | Vercel     | xAI      |
| ---------------- | ---------- | ---------- | -------- | -------- | ---------- | -------- |
| MCP Hubby        | ⭐⭐⭐⭐⭐ | ⭐⭐⭐     | ⭐⭐⭐   | ⭐⭐⭐   | ⭐⭐⭐⭐   | ⭐⭐⭐   |
| machina          | ⭐⭐⭐⭐⭐ | ⭐⭐⭐     | ⭐⭐⭐   | ⭐⭐⭐   | ⭐⭐⭐     | ⭐⭐⭐   |
| Carmenta         | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐   | ⭐⭐⭐⭐ |
| ai-coding-config | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐   | ⭐⭐⭐   | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ |
| CryptoAI         | ⭐⭐⭐     | ⭐⭐⭐⭐   | ⭐⭐⭐⭐ | ⭐⭐⭐   | ⭐⭐       | ⭐⭐⭐⭐ |
| claude_telemetry | ⭐⭐⭐⭐⭐ | ⭐⭐⭐     | ⭐⭐⭐   | ⭐⭐⭐   | ⭐⭐⭐     | ⭐⭐⭐   |
| heartcentered.ai | ⭐⭐⭐⭐   | ⭐⭐⭐     | ⭐⭐⭐   | ⭐⭐⭐   | ⭐⭐       | ⭐⭐     |

## Key Metrics for Applications

- **Total Lines of Production Code**: 100K+ across all projects
- **Test Files**: 500+ across Python and TypeScript projects
- **Commits**: 1,500+ across active projects
- **MCP Implementations**: 2 (MCP Hubby, machina)
- **Published Packages**: 3 (PyPI: claude_telemetry, heart-centered-prompts; npm:
  heart-centered-prompts)
- **Service Integrations**: 25+ via MCP Hubby
- **Specialized Agents**: 24 in ai-coding-config
