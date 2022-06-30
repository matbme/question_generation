#!/bin/sh

python prepare_data.py \
    --task qg \
    --model_type t5 \
    --model_name unicamp-dl/ptt5-base-t5-vocab \
    --dataset_path data/squad_v1_pt_multitask/ \
    --qg_format highlight_qg_format \
    --max_source_length 512 \
    --max_target_length 32 \
    --train_file_name train_data_qg_ptt5.pt \
    --valid_file_name valid_data_qg_ptt5.pt \
