#!/bin/bash
# Copyright (c) 2020, NVIDIA CORPORATION.

set -e

# Logger function for build status output
function logger() {
  echo -e "\n>>>> $@\n"
}

# Install the latest version of dask and distributed
logger "pip install git+https://github.com/dask/distributed.git@2021.06.0 --upgrade --no-deps"
pip install "git+https://github.com/dask/distributed.git@2021.06.0" --upgrade --no-deps

logger "pip install git+https://github.com/dask/dask.git@2021.06.0 --upgrade --no-deps"
pip install "git+https://github.com/dask/dask.git@2021.06.0" --upgrade --no-deps

logger "python -c 'import dask_cudf'"
python -c "import dask_cudf"
