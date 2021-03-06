#!/bin/bash

mkdir -p /opt/conda/share/jupyter/kernels/simple_kernel/
START_SCRIPT_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)/simple_kernel.py
PYTHON_PATH=$(which python)
CONTENT='{
   "argv": ["'${PYTHON_PATH}'", "'${START_SCRIPT_PATH}'", "{connection_file}"],
                "display_name": "Kore",
                "language": "Kore"
}'
echo $CONTENT > /opt/conda/share/jupyter/kernels/simple_kernel/kernel.json
