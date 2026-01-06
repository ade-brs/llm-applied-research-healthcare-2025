#!/bin/bash
#SBATCH -J mistral
#SBATCH -p routage
#SBATCH --gres=gpu:3g.70gb:1
#SBATCH -e /codes_stage/projet_llm/logs/err.err
#SBATCH -o /codes_stage/projet_llm/logs/out.out

echo "Script démarré"
# Par défaut, Slurm charge l'ensemble des env qui commencent par SLURX_XXX
# Ici, on associe le contenu de SLURM_HF_TOKEN dans HF_TOKEN
export HF_TOKEN="$SLURM_HF_TOKEN"

echo "Environnement configuré"
# On change le directry par défaut dans lequel seront téléchargés les models
export HF_HOME=/codes_stage/projet_llm/models

# On change le directry par défaut dans lequel sera téléchargé le cache de vLLM
export VLLM_CACHE_ROOT=/codes_stage/projet_llm/vLLM/.cache
echo "Lancement du serveur"
/codes_stage/projet_llm/envs/vllm/bin/python \
    -m vllm.entrypoints.openai.api_server \
    --model mistralai/Magistral-Small-2506 \
    --download-dir /codes_stage/projet_llm/models/hugginface/.cache \
    --chat-template /codes_stage/projet_llm/templates/template_mistral.jinja \
    --tokenizer-mode "mistral" \
    --host 0.0.0.0 \
    --port 8000
echo "Fin du script"

