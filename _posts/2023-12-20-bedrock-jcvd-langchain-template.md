---
title: Bedrock JCVD LangChain Template
layout: default
excerpt_separator: <!-- excerpt-end -->
---

## Bringing 🤗 Text Embeddings Inference to Amazon SageMaker

<!-- excerpt-start -->

The [Bedrock JCVD 🕺🥋](https://templates.langchain.com/new?integration_name=bedrock-jcvd) template is now officially part of LangChain!

<!-- excerpt-end -->

<img src="/assets/images/langchain_templates_new.png" width="700"/>

To use this package, you should first have the LangChain CLI installed:

```shell
pip install -U langchain-cli
```

To create a new LangChain project and install this as the only package, you can do:

```shell
langchain app new my-app --package bedrock-jcvd
```

If you want to add this to an existing project, you can just run:

```shell
langchain app add bedrock-jcvd
```

And add the following code to your `server.py` file:

```python
from bedrock_jcvd import chain as bedrock_jcvd_chain

add_routes(app, bedrock_jcvd_chain, path="/bedrock-jcvd")
```

If you are inside this directory, then you can spin up a LangServe instance directly by:

```shell
langchain serve
```

This will start the FastAPI app with a server is running locally at 
[http://localhost:8000](http://localhost:8000)

We can see all templates at [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs).

We can also access the playground at [http://127.0.0.1:8000/bedrock-jcvd/playground](http://127.0.0.1:8000/bedrock-jcvd/playground)

<img src="/assets/images/bedrock_jcvd_langserve_playground.png" width="700"/>