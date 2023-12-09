---
title: Bringing 🤗 Text Embeddings Inference to Amazon SageMaker
layout: default
excerpt_separator: <!-- excerpt-end -->
---

## Bringing 🤗 Text Embeddings Inference to Amazon SageMaker

<!-- excerpt-start -->

Just opened a PR ([huggingface/text-embeddings-inference#103](https://github.com/huggingface/text-embeddings-inference/pull/103)) to add support for [SageMaker](https://aws.amazon.com/sagemaker/)-compatible images. Similar to [huggingface/text-generation-inference#147](https://github.com/huggingface/text-generation-inference/pull/147), only for HF TEI.

<!-- excerpt-end -->

Implementation-wise, since the [required routes](https://github.com/huggingface/text-embeddings-inference/blob/282812743444c33f9e5f4f3681dbbe2472fd651e/router/src/http/server.rs#L814) were already implemented, it was mostly just CI stuff and some [hacks](https://github.com/huggingface/text-generation-inference/pull/147/commits/930842a7f0ed6ea26211c8bb2f3dbc596f1afde5):

1. Added `build-and-push-sagemaker-image` steps to `build_*` workflows
2. Added a `sagemaker` target to `Dockerfile-cuda` and a custom `sagemaker_entrypoint.sh`

Initial tests suggest it works quite well with text embedding and reranker models (*see image below* for an example with [`BAAI/bge-reranker-base`](https://huggingface.co/BAAI/bge-reranker-base/discussions/5)). Currently working on a notebook demo and some load/stress tests to compare HF TEI's performance against similar solutions.

*Still under review, so stay tuned!*

<img src="/assets/images/tei_reranker_sagemaker.png" width="700"/>