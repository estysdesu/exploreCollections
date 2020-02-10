#!/usr/bin/env sh

PROJECT='collections'
HASH='sha1:317cfe301aae:afd6cb95fdc6b48254a4fadf2419a1f4ffd93851' # collections

# Pull docker image before sending browser open to background
# docker pull jupyter/minimal-notebook
docker build . -t "${PROJECT}"
sleep 5 && open "http://127.0.0.1:8888" &

#docker run --rm -it -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v "$PWD":/home/jovyan/work jupyter/minimal-notebook 
#docker run --name "${PROJECT}" --rm -it -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v "${PWD}":/home/jovyan/work "${PROJECT}" start-notebook.sh --NotebookApp.password="${PASSWD}" # (https://jupyter-docker-stacks.readthedocs.io/en/latest/using/common.html#notebook-options)
#docker run --name "${PROJECT}" --rm -it -p 8888:8888 -v "${PWD}":/home/jovyan/work "${PROJECT}" start-notebook.sh --NotebookApp.password="${HASH}" # https://jupyter-docker-stacks.readthedocs.io/en/latest/using/common.html#notebook-options
docker run --name "${PROJECT}" --rm -it -p 8888:8888 -v "${PWD}":/home/jovyan/work "${PROJECT}" start.sh jupyter lab --LabApp.token='' # https://jupyter-docker-stacks.readthedocs.io/en/latest/using/recipes.html
