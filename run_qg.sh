#!/bin/sh

python run_qg.py \
    --model_name_or_path unicamp-dl/ptt5-small-t5-vocab \
    --model_type t5 \
    --tokenizer_name_or_path t5_qg_tokenizer \
    --output_dir ptt5-small-qg-2 \
    --train_file_path data/train_data_qg_ptt5.pt \
    --valid_file_path data/valid_data_qg_ptt5.pt \
    --per_device_train_batch_size 32 \
    --per_device_eval_batch_size 32 \
    --gradient_accumulation_steps 8 \
    --learning_rate 1e-4 \
    --num_train_epochs 20 \
    --seed 42 \
    --do_train \
    --do_eval \
    --logging_steps 100
