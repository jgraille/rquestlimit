# Hello World R Plumber API

A simple "Hello World" REST API built with R Plumber, featuring Docker containerization and conda environment management.

## What This Does

This repository contains a minimal REST API that serves a single endpoint returning "Hello world!" when accessed. It demonstrates:

- Basic R Plumber API setup
- Docker containerization for R applications  
- Conda environment management for R dependencies

## Local Development

This repository uses [conda](https://docs.conda.io/en/latest/miniconda.html) to create an environment on your local machine. Follow the [installation instructions](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html) to install miniconda.

Verify conda installation:
```bash
conda --version
# Expected output: conda 22.9.0 (or newer)
```

### Setup

1. Create the conda environment from the repository root:
```bash
conda env create --file requirements.yml
```

2. Activate the environment:
```bash
conda activate rquest
```

3. Launch the API:
```bash
Rscript app.R
```

### Testing

Call the Hello World endpoint:
```bash
curl http://127.0.0.1:8000/
# Expected output: Hello world!
```

## Docker

Build and run the containerized version:

```bash
# Build the Docker image
docker build -t hello-world-plumber .

# Run the container
docker run -p 8000:8000 hello-world-plumber
```

Then test with:
```bash
curl http://127.0.0.1:8000/
# Expected output: Hello world!
```


