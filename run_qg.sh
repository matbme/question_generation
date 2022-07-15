#!/bin/sh

python run_qg.py \
    --model_name_or_path pierreguillou/t5-base-qa-squad-v1.1-portuguese \
    --model_type t5 \
    --tokenizer_name_or_path t5_qg_tokenizer \
    --output_dir ptt5-small-qg-multi-4 \
    --train_file_path data/train_data_multi_ptt5.pt \
    --valid_file_path data/valid_data_multi_ptt5.pt \
    --per_device_train_batch_size 8 \
    --per_device_eval_batch_size 8 \
    --gradient_accumulation_steps 8 \
    --learning_rate 1e-4 \
    --num_train_epochs 20 \
    --seed 42 \
    --do_train \
    --do_eval \
    --logging_steps 100
