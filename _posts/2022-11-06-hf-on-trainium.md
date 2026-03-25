---
title: HuggingFace 🤗 on Trainium
layout: default
excerpt_separator: <!-- excerpt-end -->
---

## [HuggingFace 🤗 on Trainium](https://github.com/JGalego/HF-on-Trainium)

<!-- excerpt-start -->

A deep dive into training [🤗 Transformers](https://huggingface.co/docs/transformers/index) on [AWS Trainium](https://aws.amazon.com/machine-learning/trainium/) — AWS's custom chip designed for high-performance deep learning.

📢 **UPDATE:** [🤗 on Trainium](https://github.com/JGalego/HF-on-Trainium) is now part of the [AWS Iberia AI/ML workshops](https://ml.aws-iberia.cloud)

<!-- excerpt-end -->

Inspired by Julien Simon's excellent post on [Accelerate Transformer training with AWS Trainium](https://julsimon.medium.com/accelerate-transformer-training-with-aws-trainium-d20cd3f9dc08) 🙌, I built a project with Terraform configurations and PyTorch training scripts to get you up and running immediately.

The goal? Demonstrate how minimal the code changes are when moving training jobs to `Trn1` instances, using Hugging Face's [fine-tuning tutorial](https://huggingface.co/docs/transformers/training) as the baseline.

This is still a work in progress 🚧, so feedback and suggestions are always welcome.

📚 Want to learn more about [AWS Trainium](https://aws.amazon.com/machine-learning/trainium/)? Check out the **References** section in the repo docs.

<img src="/assets/images/hf_on_trainium.png" width="700"/>
