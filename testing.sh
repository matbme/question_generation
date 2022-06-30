#! /bin/sh

python testing.py \
    --model_name_or_path ptt5-small-qg \
    --tokenizer_name_or_path t5_qg_tokenizer \
    --testing_document "Python é uma linguagem de programação de alto nível, interpretada de script, imperativa, orientada a objetos, funcional, de tipagem dinâmica e forte. Foi lançada por Guido van Rossum em 1991."
