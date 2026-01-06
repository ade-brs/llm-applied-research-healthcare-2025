# Magistral Project (vLLM with Mistral)

This repository contains a local project based on the **Mistral-Small-2506** model, executed using the **vLLM** infrastructure and deployed in a local GPU environment (`SLURM`).

# Project Structure

```
depot/
├── etudes_donnes/                    # Preliminary study of the API (data, notebooks)
│   └── etudes_resumes.ipynb
│
├── magistral/                        # Main folder for the Mistral project
│   ├── script_pls_prompts.py        # Main script to query the model
│   ├── start_magistral.sh           # Script to launch the vLLM server
│   ├── logs/                         # Model logs
│   ├── models/                       # Downloaded local model (via Hugging Face)
│   ├── templates/                    # Jinja template for prompt formatting
│   └── vLLM/                         # vLLM cache and compiled files
│
├── .gitignore                        # Files/folders ignored by Git
├── requirements.txt                  # Project dependencies
└── README.md                         # This file
```

# Prerequisites

- CUDA-compatible GPU  
- Python 3.12  
- Hugging Face token (read access)  
- Activated virtual environment  

# Installation

1. Create and activate the virtual environment:
```bash
python -m venv envs
source envs/vllm/bin/activate
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

# Launch the Mistral Server

Export a Hugging Face token with read access:

```bash
export SLURM_HF_TOKEN=your_huggingface_token_here
```

Then run:
```bash
bash magistral/start_magistral.sh
```

The vLLM server will be available at `http://gpusoif:8000/v1/chat/completions`.

# Query the Model

Run the following script to send a prompt:
```bash
python magistral/script_pls_prompts.py
```

You can modify the prompt directly inside the script to adjust your request.

# Ignored Folders

See `.gitignore`.

# Results

Classement moyen global par lettre de résumé (pré-prompt) :
Prompt                              Lettre  Classement moyen global 
Exemple                             B                 2.064516
Questions implicites + exemples     D                 2.354839
Règles structurées                  A                 2.612903
Etapes guidées                      C                 3.290323
Flesch-Kincaid (CERS)               E                 4.677419

Accord inter-évaluateurs global (tous projets confondus) :
Kendall tau moyen global : 0.4630

Évaluation moyenne par critère et par prompt :
                                   Comprehension  Fidelite content sci  Langage accessible  \
Prompt                                                            
A (Règles structurées)                4.45                  3.45                4.61   
B (Exemple)                           4.48                  3.84                4.42   
C (Etapes guidées)                    3.87                  3.71                3.87   
D (Questions implicites + exemples)   4.32                  3.77                4.26   
E (Flesch-Kincaid (CERS))             1.84                  2.97                2.19   

                                    Pas d'exagération  Pas d'infos ajoutees  Note moyenne globale  
Prompt                                                                 
A  (Règles structurées)                  4.35                  4.19                  4.21  
B  (Exemple)                             4.42                  4.32                  4.30  
C  (Etapes guidées)                      4.13                  4.00                  3.92  
D  (Questions implicites + exemples)     4.23                  3.74                  4.06  
E  (Flesch-Kincaid (CERS))               2.39                  1.97                  2.27  

# Author

Project developed as part of an engineering internship (2025).  
Adélaïde BROUCAS
