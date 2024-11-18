---
title: LLM Goblet 🍷 > LLM proxy application powered by AWS Chalice and LiteLLM
layout: default
excerpt_separator: <!-- excerpt-end -->
---

## LLM Goblet 🍷

<!-- excerpt-start -->

LLM proxy application powered by [AWS Chalice](https://aws.github.io/chalice/) and [LiteLLM](https://www.litellm.ai/).

👨‍💻 All code and documentation is available at [github.com/JGalego/LLM-Goblet](https://github.com/JGalego/LLM-Goblet).

<!-- excerpt-end -->

## Prerequisites

* [Conda](https://conda.io/projects/conda/en/latest/user-guide/install/index.html) (*preferred*) or [Python](https://www.python.org/) (version `>=3.9`) 🐍
* (*Optional*) [just](https://github.com/casey/just) and [jq](https://jqlang.github.io/jq/)

## Getting Started

0. Install dependencies

	```bash
	pip install -r requirements.txt
	```

1. Build and deploy the application

	```bash
	chalice deploy --stage dev
	```

2. Test it out!

    ```bash
    curl -s -X POST `chalice url --stage dev`/images/generations \
        --user "$AWS_ACCESS_KEY_ID":"$AWS_SECRET_ACCESS_KEY" \
        --aws-sigv4 "aws:amz:$AWS_DEFAULT_REGION:execute-api" \
        -H "x-amz-security-token: $AWS_SESSION_TOKEN" \
        -H "Accept: application/json" \
        -H "Content-Type: application/json" \
        -d @assets/goblet.json | jq -r .data[0].b64_json | base64 -d > assets/goblet.jpg
    ```

## But wait, there's more!

This project includes a [just](https://github.com/casey/just)file that simplifies the process of building, deploying and testing the application.

```bash
# Run 🛠️
just local
just deploy

# Check ✅
just check

# Test 🚀
just talk "What is the meaning of life?"
just embed "So long and thanks for all the fish"
just image "An astronaut riding a horse on Mars"

# Clean 🧹
just destroy
```

**Want to learn more about just?** Check out the [Just Programmer's Manual](https://just.systems/man/en/) 📖

<img src="https://github.com/JGalego/LLM-Goblet/raw/main/assets/goblet.jpg" width="50%"/>