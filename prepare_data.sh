#!/bin/sh

python prepare_data.py \
    --task multi \
    --model_type t5 \
    --tokenizer pierreguillou/t5-base-qa-squad-v1.1-portuguese \
    --dataset_path data/squad_v1_pt_multitask/ \
    --qg_format highlight_qg_format \
    --max_source_length 512 \
    --max_target_length 32 \
    --train_file_name train_data_multi_ptt5.pt \
    --valid_file_name valid_data_multi_ptt5.pt \
