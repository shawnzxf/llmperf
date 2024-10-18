#!/bin/bash

export OPENAI_API_BASE="http://localhost:8080/v1"
export OPENAI_API_KEY="mock_key"


# python token_benchmark_ray.py \
#     --model '/home/ubuntu/xiufen/models/llama-3.2-1b' \
#     --mean-input-tokens 50 \
#     --stddev-input-tokens 10 \
#     --mean-output-tokens 50 \
#     --stddev-output-tokens 10 \
#     --num-concurrent-requests 10 \
#     --timeout 300 \
#     --max-num-completed-requests 100 \
#     --additional-sampling-params '{}' \
#     --results-dir "result_outputs" \
#     --llm-api "openai"


python token_benchmark_ray.py \
    --model '/home/ubuntu/xiufen/models/llama-3.1-405b-64l' \
    --mean-input-tokens 10000 \
    --stddev-input-tokens 10 \
    --mean-output-tokens 1500 \
    --stddev-output-tokens 10 \
    --num-concurrent-requests 1 \
    --timeout 3600 \
    --max-num-completed-requests 50 \
    --additional-sampling-params '{}' \
    --results-dir "result_outputs" \
    --llm-api "openai"


# python token_benchmark_ray.py \
#     --model '/home/ubuntu/xiufen/models/llama-3.1-405b' \
#     --mean-input-tokens 10112 \
#     --stddev-input-tokens 10 \
#     --mean-output-tokens 1500 \
#     --stddev-output-tokens 10 \
#     --num-concurrent-requests 1 \
#     --timeout 3600 \
#     --max-num-completed-requests 50 \
#     --additional-sampling-params '{}' \
#     --results-dir "result_outputs" \
#     --llm-api "openai"
