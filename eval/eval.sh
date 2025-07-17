export CUDA_VISIBLE_DEVICES='0' 

MODEL_PATH=$1
# math, amc23, olympiadbench, aime
DATA_NAME=$2
# test2025-II, test2024, test2023, test, test
SPLIT=$3


python eval.py \
    --model_name_or_path $MODEL_PATH \
    --data_name $DATA_NAME \
    --prompt_type "qwen-instruct" \
    --temperature 0.0 \
    --start_idx 0 \
    --end_idx -1 \
    --n_sampling 1 \
    --k 1 \
    --split $SPLIT \
    --max_tokens 32768 \
    --seed 0 \
    --top_p 1 \
    --surround_with_messages \

echo "MODEL_PATH: $MODEL_PATH"
echo "DATASET_NAME: $DATA_NAME"
echo "SPLIT: $SPLIT"