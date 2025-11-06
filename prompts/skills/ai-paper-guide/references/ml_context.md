# ML/AI Paper Context Reference

Use this reference to help place papers in the broader research landscape.

## Common Paper Categories

- **Foundational:** New architectures, training methods, or theoretical advances (e.g., Transformers, RLHF)
- **Prompting/In-Context Learning:** Techniques for using models without fine-tuning
- **RAG (Retrieval-Augmented Generation):** Systems that retrieve and use external knowledge
- **Fine-tuning/Adaptation:** Methods for specializing models (LoRA, QLoRA, instruction tuning)
- **Evaluation/Benchmarking:** New metrics, datasets, or testing frameworks
- **Efficiency:** Making models smaller/faster (quantization, pruning, distillation)
- **Safety/Alignment:** Reducing harm, improving truthfulness, controllability
- **Multi-modal:** Vision-language, speech, embodied AI
- **Agents/Tool Use:** Models that take actions or use external tools
- **Interpretability:** Understanding how models work internally

## Key ML/AI Research Areas

**Architecture:**
- Attention mechanisms, transformers, state space models, mixture of experts
- Context length extensions, efficient attention variants

**Training:**
- Pre-training objectives, scaling laws, data quality
- Reinforcement learning from human feedback (RLHF), direct preference optimization (DPO)
- Continued pre-training, instruction tuning, alignment

**Inference:**
- Decoding strategies (sampling, beam search, constrained generation)
- Speculative decoding, quantization, caching

**Applications:**
- Code generation, reasoning, mathematics
- Long-form generation, summarization, question answering
- Tool use, function calling, agentic workflows

## Evaluation Considerations

- **Automatic metrics:** Perplexity, BLEU, ROUGE, F1, accuracy
- **Model-based evaluation:** Using stronger models to judge outputs
- **Human evaluation:** Expert ratings, crowdsourced judgments
- **Benchmark suites:** MMLU, HumanEval, GSM8K, BIG-Bench, HELM
- **Domain-specific:** Task-specific metrics and test sets

## Common Practical Implications

When reading papers, consider:
- **Reproducibility:** Can this be implemented? Are details sufficient?
- **Compute requirements:** What resources are needed?
- **Generalizability:** Does this work beyond the tested scenarios?
- **Integration:** How would this fit into existing systems?
- **Trade-offs:** What's gained vs. what's sacrificed?
