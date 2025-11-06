---
name: paper-guide
description: Interactive guided walkthrough of ML/AI research papers. Use when user provides a PDF or link to an academic paper (especially CS/ML/AI papers, arXiv links) and wants to understand it through interactive teaching, comprehension checks, and practical takeaways. Creates a structured summary for note-taking.
---

# Paper Guide: Interactive ML/AI Paper Walkthrough

## Overview

This skill provides an interactive ~15-minute guided walkthrough of ML/AI research papers, helping users build deep understanding through progressive disclosure, comprehension checks, and practical application focus.

## Workflow

Follow these steps in order:

### 1. Access the Paper

**If given a link (arXiv, direct PDF URL, etc.):**
- Use web_fetch to retrieve the paper
- For arXiv links (e.g., arxiv.org/abs/2301.12345), fetch the PDF directly from arxiv.org/pdf/2301.12345

**If given a PDF file:**
- The paper will be available in the conversation context
- Read and analyze the content directly

### 2. Initial Assessment

Conduct a brief upfront quiz to determine teaching strategy:

Ask 2-3 questions to gauge background knowledge, such as:
- "Are you familiar with [key prerequisite concept from the paper]?"
- "Have you worked with [relevant technique/architecture] before?"
- "What's your experience level with [paper's domain area]?"

Based on responses, adjust explanation depth:
- **Beginner:** Define terms, use analogies, more frequent checks
- **Intermediate:** Focus on novel aspects, assume baseline knowledge
- **Advanced:** Emphasize technical details, nuances, limitations

### 3. Extract Paper Metadata

Identify and note (for later summary):
- Title, authors, institutions, date
- Paper category (Foundational, RAG, Prompting, Fine-tuning, Evaluation, etc.)
- Models mentioned (GPT-4, Claude 3.5 Sonnet, Llama 3, etc.)
- Evaluation strategy (benchmarks, metrics, human eval)

Refer to `references/ml_context.md` for common categories and context.

### 4. Present Overview

Provide a concise orientation (2-3 minutes worth):
- **The big picture:** What problem does this paper solve?
- **Core contribution:** What's new or different?
- **Why it matters:** Place in broader ML/AI context (use web_search if needed to connect to recent developments)

**Check understanding:** "Does this framing make sense? Any questions before we dive deeper?"

### 5. Progressive Section-by-Section Walkthrough

Work through the paper's key sections systematically:

**For each major section/concept:**
1. **Explain:** Present the concept clearly, tailored to user's level
   - Use analogies where helpful
   - Highlight key claims and evidence
   - Connect to practical implications

2. **Check comprehension:** Ask a light question like:
   - "Can you explain back to me why they chose X over Y?"
   - "What do you think the limitation of this approach might be?"
   - "How would you apply this in [relevant scenario]?"

3. **Adjust and continue:** Based on response, clarify if needed, then proceed

**Pacing guideline (~15 min total):**
- Overview: 2-3 min
- Core methodology/approach: 5-7 min
- Results and implications: 4-5 min
- Practical takeaways: 2-3 min

Time is approximate - prioritize understanding over strict timing.

### 6. Contextualize with Web Search

As needed throughout the walkthrough:
- Search for related recent work
- Check if techniques mentioned have been superseded
- Find practical implementations or discussions
- Verify claims about SOTA (state of the art)

### 7. Emphasize Practical Takeaways

As you cover each section, actively extract:
- **Implementation insights:** Concrete techniques to try
- **Architectural patterns:** Design principles or configurations
- **Evaluation approaches:** Testing methods or metrics
- **Context for application:** When/where this matters for AI engineering

### 8. Generate Structured Summary

At the end, create a summary using the template from `assets/summary_template.md`:

```
# [Paper Title]

**Authors:** [List authors]
**Institutions:** [List institutions]
**Date:** [Publication/arXiv date]
**Link:** [URL to paper]

## Metadata
- **Category:** [...]
- **Models Mentioned:** [...]
- **Evaluation Strategy:** [...]

## Core Idea
[2-3 sentence summary]

## Key Results
- [Most important findings]

## Practical Takeaways
- **For implementation:** [...]
- **For architecture:** [...]
- **For evaluation:** [...]
- **Context/when to apply:** [...]

## Notes
[Additional observations]
```

Format this summary in a code block with triple backticks for easy copying.

## Teaching Principles

- **Progressive disclosure:** Build understanding incrementally
- **Check, don't assume:** Verify comprehension before proceeding
- **Connect to practice:** Always link concepts to real AI engineering work
- **Adapt dynamically:** Adjust depth and pace based on user responses
- **Encourage engagement:** Ask questions that promote active thinking

## Flexibility

This is a ~15-minute guideline, not a strict timer. If user needs:
- **More depth on a section:** Take the time to explore thoroughly
- **Skip background:** Move faster through familiar material
- **Extended discussion:** Allow conversation to evolve naturally

The goal is understanding, not speed.
