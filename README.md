# LLM for Medical Text Summarization and Exploration

This repository presents the work conducted during my **first-year engineering internship** at the **University Hospital of Bordeaux (CHU de Bordeaux)**, within the *Medical Informatics and Medical Archives Unit (IAM)*.

The project focuses on the **use of Large Language Models (LLMs)** to support the **summarization and exploration of medical research documents**, with a strong emphasis on **methodology, evaluation, and ethical constraints**.

---

##  Internship Context

- **Institution**: CHU de Bordeaux (University Hospital of Bordeaux)
- **Department**: Medical Informatics and Medical Archives Unit (IAM)
- **Duration**: June – August 2025
- **Role**: Data Engineering Intern
- **Supervisor**: Dr. Romain Griffier (Public Health Physician, Medical Informatics)

This internship was carried out in a **hospital environment**, involving **sensitive medical data** and strict confidentiality requirements.

---

##  Confidentiality Notice

>  **Important**  
> Due to confidentiality, data protection regulations, and institutional policies of the CHU de Bordeaux,  
> **the source code, datasets, and internal infrastructure used during this project cannot be publicly shared**.
>
> This repository therefore focuses on:
> - methodology  
> - technical understanding  
> - experimental results  
> - ethical considerations  

No sensitive data or proprietary code is disclosed.

---

##  Project Objectives

The internship aimed to explore how **local LLM deployments** can assist medical teams by:

- Generating **plain-language summaries** of scientific medical documents
- Improving **accessibility of research outputs** for non-specialists
- Evaluating different **prompt engineering strategies**
- Designing a first **Retrieval-Augmented Generation (RAG)** pipeline adapted to medical contexts

---

##  Technical Topics Covered

- Large Language Models (LLMs)
- Local deployment using **vLLM**
- Prompt engineering strategies:
  - Structured rules
  - Few-shot examples
  - Guided steps
  - Implicit questions
  - Readability-constrained prompts (Flesch–Kincaid)
- Evaluation methodology:
  - Qualitative criteria (CERS guidelines)
  - Inter-rater agreement (Kendall’s tau)
- Retrieval-Augmented Generation (RAG)
- Vector embeddings and document indexing
- Ethical and methodological constraints in healthcare AI

---

##  Tools & Technologies (Conceptual Use)

- **LLMs** (Mistral family)
- **vLLM**
- **LangChain**
- **FAISS**
- **Hugging Face embeddings**
- **SLURM** (GPU job scheduling)
- Python ecosystem for data processing and evaluation

*(Tools are listed for technical context only; implementations are not shared.)*

---

##  Methodology & Results

Several prompt strategies were systematically tested on medical research summaries and evaluated by multiple reviewers using official ethical guidelines for public communication of medical research.

Key findings:
- Few-shot example-based prompts achieved the best balance between **readability and scientific fidelity**
- Pure readability optimization (Flesch–Kincaid) led to **loss of scientific accuracy**
- Human evaluation remains essential in medical AI applications
- RAG approaches significantly improve **traceability and reliability** of generated answers

---

##  Available Documentation

The following materials are included or referenced in this repository:

-  **Internship report** (methodology, analysis, results)
-  **Technical presentation** on prompt evaluation
-  **Conceptual diagrams** (LLM workflow, RAG pipeline)
-  **Ethical reflections** on AI use in healthcare

---

##  Author

**Adélaïde Broucas**  
Engineering student – Applied Mathematics & Data  
CY Tech  

---

##  Disclaimer

This repository is intended as a **research and portfolio showcase**.  
It does not provide a deployable system and does not expose any confidential hospital data or code.
