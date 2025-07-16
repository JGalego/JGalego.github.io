---
title: HuggingFace 🤗 on Trainium: A (Not So Deep) Exploration
layout: default
excerpt_separator: <!-- excerpt-end -->
---

## [HuggingFace 🤗 on Trainium](https://github.com/JGalego/HF-on-Trainium)

<!-- excerpt-start -->

A (not so deep) exploration of [🤗 Transformers](https://huggingface.co/docs/transformers/index) training on [AWS Trainium](https://aws.amazon.com/machine-learning/trainium/).

📢 **UPDATE:** [🤗 on Trainium](https://github.com/JGalego/HF-on-Trainium) is now part of the [AWS Iberia AI/ML workshops](https://ml.aws-iberia.cloud)

<!-- excerpt-end -->

Inspired by Julien Simon's post on how to [Accelerate Transformer training with AWS Trainium](https://julsimon.medium.com/accelerate-transformer-training-with-aws-trainium-d20cd3f9dc08) 🙌, I've created a small project with a some Terraform configurations and PyTorch training scripts to help you get started ASAP. 

The goal is to show how little one has to change (code-wise) to run training jobs on `Trn1` instances, starting from Hugging Face's demo on [how to fine-tune a pretrained model](https://huggingface.co/docs/transformers/training). 

It is still a WIP 🚧 so feel free to reach out if you have any suggestions on how to improve it.

📚 Want to learn more about [AWS Trainium](https://aws.amazon.com/machine-learning/trainium/)? Check out the **References** section in the repo docs.

<img src="/assets/images/hf_on_trainium.png" width="700"/>
