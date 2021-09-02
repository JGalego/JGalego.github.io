---
title: Resume
layout: default
---

📄 [**Download CV**](/assets/documents/cv_en.pdf)

<img src="/assets/images/dilbert-resume.jpg" width="450px"/>

### Background

<table>
    <tr>
        <th>Work Experience</th>
        <th>Education</th>
    </tr>
    <tr>
        <td>
            {% for job in site.data.jobs %}
            <a href="{{ job.where.link }}"><b>{{ job.where.name }}</b></a> <br>
            {{ job.role }} <br>
            <tt>{{ job.when.start }}</tt> - <tt>{{ job.when.end | default: 'Present' }}</tt> <br>
            {% if forloop.last == false %}
            <br>
            {% endif %}
            {% endfor %}
        </td>
        <td>
            {% for course in site.data.education %}
            <a href="{{ course.where.link }}"><b>{{ course.where.name }}</b></a> <br>
            {{ course.degree }} {{ course.area }} {% if course.graduated %}🎓{% endif %} <br>
            <tt>{{ course.when.start }}</tt> - <tt>{{ course.when.end | default: 'Present' }}</tt> <br>
            {% if forloop.last == false %}
            <br>
            {% endif %}
            {% endfor %}
        </td>
    </tr>
</table>

### Technical Skills

* Hands-on experience with major public cloud providers ([AWS](https://aws.amazon.com/), [Azure](https://azure.microsoft.com/en-us/), [Google Cloud](https://cloud.google.com/)) ☁️
    
* Working knowledge of multiple programming and scripting languages

    - **Proficient** - Python, Java
    - **Professional Use** - C++, C#, Go, Groovy, JavaScript, Lua, MATLAB, Ruby
    - **Academic Use** - C, Coq, Haskell, Lisp, Prolog, R, Wolfram Mathematica

* Expert knowledge of multiple DevOps and DevSecOps tools

    - **Automation** - [Ansible](https://www.redhat.com/en/technologies/management/ansible), [Packer](https://www.packer.io/), [Terraform](https://www.terraform.io/), [Vagrant](https://www.vagrantup.com/)
    - **CI/CD** - [Azure DevOps](https://docs.microsoft.com/en-us/azure/devops), [GitLab CI](https://docs.gitlab.com/ee/ci/), [Jenkins](https://www.jenkins.io/)
    - **Containerization** - [Docker](https://www.docker.com/), [Kubernetes](https://kubernetes.io/)
    - **Logging & Monitoring** - [Elastic Stack](https://www.elastic.co/elastic-stack/), [Grafana](https://grafana.com/grafana/)
    - **Package Management** - [JFrog Artifactory](https://jfrog.com/artifactory/)
    - **Secrets Management** - [HashiCorp Vault](https://www.hashicorp.com/products/vault/)
    - **Virtualization** - [VirtualBox](https://www.virtualbox.org/), [VMware](https://www.vmware.com/)

* Extensive experience with common Python packages

    - **Scientific Computing** - [NumPy](https://numpy.org/), [SciPy](https://www.scipy.org/)
    - **Data Analysis & Manipulation** - [Pandas](https://pandas.pydata.org/)
    - **Differentiable Programming** - [PyTorch](https://pytorch.org/), [MXNet](https://mxnet.apache.org/versions/1.8.0/), [TensorFlow](https://www.tensorflow.org/) (`1.x` and `2.x`)
    - **NLP modules** - [Gensim](https://radimrehurek.com/gensim/), [NLTK](https://www.nltk.org/), [spaCy](https://spacy.io/), [TextBlob](https://textblob.readthedocs.io/en/dev/)
    - **High-level ML frameworks** - [🤗 Transformers](https://github.com/huggingface/transformers), [Keras](https://keras.io/), [Scikit-Learn](https://scikit-learn.org/stable/)
    
* Expert knowledge of data and ML engineering tools and frameworks

    - **Data & Model Versioning** - [DVC](https://dvc.org/)
    - **Data Exploration** - [Jupyter Notebook](https://jupyter.org/)
    - **Data Processing** - [Airflow](https://airflow.apache.org/), [Hadoop](https://hadoop.apache.org/), [Spark](https://spark.apache.org/) (`2.x` and `3.x`)
    - **Data Visualization** - [Dash](https://github.com/plotly/dash)
    - **Feature Storage** - [Amazon SageMaker Feature Store](https://aws.amazon.com/sagemaker/feature-store/), [Feast](https://feast.dev/)
    - **ML Platforms** - [Dataiku](https://www.dataiku.com/), [Kubeflow](https://www.kubeflow.org/)
    - **Model Interpretability** - [Alibi](https://github.com/SeldonIO/alibi), [Lucid](https://github.com/tensorflow/lucid) 
    - **Model Lifecycle** - [MLflow](https://mlflow.org/)
    - **Model Serving** - [BentoML](https://docs.bentoml.org/en/latest/), [TensorFlow Serving](https://www.tensorflow.org/tfx/guide/serving), [TorchServe](https://pytorch.org/serve/)
    - **Model Monitoring** - [Evidently](https://github.com/evidentlyai/evidently), [Neptune](https://neptune.ai/)
    - **Optimization Tools** - [Mahout](https://mahout.apache.org/)
    - **Simplification Tools** - [Hermione](https://github.com/a3data/hermione), [Ludwig](https://github.com/ludwig-ai/ludwig)
    - **Visual Analysis and Debugging** - [Manifold](https://github.com/uber/manifold), [Netron](https://github.com/lutzroeder/netron), [Yellowbrick](https://github.com/DistrictDataLabs/yellowbrick)
