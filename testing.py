from dataclasses import dataclass, field
from typing import Optional

import torch
from transformers import HfArgumentParser
from pipelines import pipeline

device = 'cuda' if torch.cuda.is_available else 'cpu'


@dataclass
class EvalArguments:
    model_name_or_path: str = field(
        metadata={"help": "Path to pretrained model or model identifier from \
        huggingface.co/models"}
    )
    testing_document: str = field(
        metadata={"help": "Testing document for running question generation"}
    )
    tokenizer_name_or_path: Optional[str] = field(
        default=None, metadata={"help": "Pretrained tokenizer name or path if \
        not the same as model_name"}
    )
    output_path: Optional[str] = field(
        default="hypothesis.txt",
        metadata={"help": "path to save the generated questions."}
    )


def main():
    parser = HfArgumentParser((EvalArguments,))
    args = parser.parse_args_into_dataclasses()[0]

    nlp = pipeline("e2e-qg",
                   model=args.model_name_or_path,
                   tokenizer=args.tokenizer_name_or_path)

    out = nlp(args.testing_document)
    print(out)


if __name__ == "__main__":
    main()
