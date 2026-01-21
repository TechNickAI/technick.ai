# Improvement Ideas for technick.ai

Based on analysis of the job search strategy, cover letters, and project inventory, here are opportunities to strengthen the career page and overall site for AI company job applications.

## Priority 1: High Impact, Quick Wins

### 1. Add Project Images (Missing from strategy)
The strategy doc notes these are still TODO:
- `images/ai-coding-config.png` - screenshot showing agent/command ecosystem
- `images/machina.png` - logo or architecture diagram

These would make the projects section more visually compelling.

### 2. Make MCP Expertise More Prominent
MCP protocol implementation is your #1 differentiator for Anthropic. Consider:
- Add "2x MCP Implementations" as a headline stat (alongside 17,715 commits, 130 repos)
- Create a dedicated section: "Model Context Protocol Expertise"
- Link directly to MCP Hubby and machina repos

### 3. Add Key Metrics to Project Cards
From the project inventory, these metrics resonate:
- MCP Hubby: "95% context reduction", "713 commits", "87 test files", "25 service adapters"
- ai-coding-config: "24 agents", "18 commands", "33 rules", "304 commits"
- Carmenta: "7 frontier models", "11 service integrations"

### 4. Fix the AI Era Annotation Target
The annotation searches for `Jun '23` but should target `2023-06` in the monthly data format. Verify it's appearing correctly on the chart.

## Priority 2: Content Additions

### 5. Add "Why I'd Excel At..." Section
Tailored messaging for each target company (could be collapsible tabs):
- **Anthropic**: MCP implementations, Claude Code infrastructure, Constitutional AI alignment
- **Vercel**: DevEx obsession, built on Vercel stack, ai-coding-config
- **OpenAI**: Shipping velocity, multi-model expertise (not Claude-locked), pragmatic execution
- **Meta**: Open source ethos, production systems at scale
- **xAI**: Speed of execution, entrepreneurial track record

### 6. Add a Skills/Expertise Matrix
Visual representation of technical depth:
- AI/ML Infrastructure: ████████████ Expert (MCP Hubby, Carmenta, machina)
- Developer Experience: ████████████ Expert (ai-coding-config, Claude Code)
- Production Systems: ████████████ Expert (CryptoAI, Krux, ChangeTip)
- Multi-Model Orchestration: ███████████ Expert (Carmenta routes 7 models)

### 7. Add Testimonials/Endorsements
If available, quotes from:
- Colleagues from Krux/ChangeTip/Airbnb era
- Users of MCP Hubby or ai-coding-config
- Industry connections who can speak to technical ability

### 8. Create Project Case Studies
Deeper dives with:
- Problem statement
- Approach/Architecture
- Outcomes/Impact
- Technical challenges solved

## Priority 3: SEO & Discoverability

### 9. Structured Data Enhancements
Add JSON-LD for:
- `SoftwareSourceCode` for each project
- `Person` with `knowsAbout` listing technologies
- `WorkExperience` for career history

### 10. Meta Tags for Key Search Terms
Ensure pages rank for:
- "MCP protocol implementation"
- "Claude Code plugins"
- "AI developer experience"
- "Nick Sullivan Anthropic"

### 11. Add llms.txt
Create `/llms.txt` so AI assistants better understand the site content when users research Nick.

## Priority 4: Visual & UX Improvements

### 12. Project Architecture Diagrams
Simple visual showing how key projects work:
- MCP Hubby progressive disclosure flow
- Carmenta multi-model routing
- machina Mac integration points

### 13. Interactive Demos
If feasible:
- Live ai-coding-config agent explorer
- MCP Hubby API playground

### 14. Enhanced Timeline Visuals
The career timeline could show:
- Wave timing (when each tech wave started vs when Nick joined)
- Outcome annotations (exits, acquisitions)

### 15. Mobile UX Polish
Verify touch targets, scrolling, and content priorities on mobile.

## Priority 5: Company-Specific Landing Pages

### 16. Create /career/anthropic
Dedicated page emphasizing:
- MCP implementations (MCP Hubby + machina)
- Claude Code ecosystem (ai-coding-config, claude_telemetry)
- Constitutional AI / HeartCentered.AI alignment
- Specific proof points for target roles

### 17. Create /career/vercel
Dedicated page emphasizing:
- Carmenta (built on their full stack)
- Developer experience obsession
- ai-coding-config workflow automation

This could be overkill, but having company-specific URLs to share with recruiters could be powerful.

## Data & Stats Improvements

### 18. Continue Monthly Stats Collection
Currently at 55 months with a gap from 2015-2024. The rate-limited API prevents full collection. Options:
- Run script at different times to avoid rate limits
- Use authenticated GitHub API for higher limits
- Show the data we have with a note about the gap

### 19. Add More Data Visualizations
Beyond commits:
- Lines of code by language
- Test coverage trends
- Repository activity heatmap

## Content From Strategy Doc (Still TODO)

From `job-application-strategy.md`:
- [ ] GitHub Profile: Pin ai-coding-config, carmenta (if public), machina, heart-centered-prompts
- [ ] LinkedIn: Update headline, add Featured section with Substack essays
- [ ] HeartCentered.AI: Add explicit Constitutional AI connection, "For Researchers" page

---

## Recommended Next Steps

1. **Immediate**: Add the key metrics to project cards on career page
2. **This week**: Create project images and add MCP section
3. **Before applications**: Create the /career/anthropic page as a secret weapon
4. **Ongoing**: Continue stats collection during off-peak hours

These improvements collectively strengthen the narrative: "Not just someone who uses AI tools—someone who builds infrastructure for them."
