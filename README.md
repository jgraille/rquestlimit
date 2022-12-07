# rquestlimit

Rate limiting module

# Local

This repository uses [conda](https://docs.conda.io/en/latest/miniconda.html) to create an environment in your local machine. Follow those [instructions](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html) to install miniconda.

```
>> conda --version
conda 22.9.0 
```

Create the environment at the repository root:

```
>> conda env create --file requirements.yml
```

Launch the api:

```    
>> Rscript app.R
```

Call the endpoint
```
>> curl http://127.0.0.1:8000
Hello world!
```

*Project is on hold as a MemCached client is needed.*
