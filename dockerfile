FROM jupyter/minimal-notebook:latest
WORKDIR $HOME/work
# ENV JUPYTER_ENABLE_LAB yes
RUN python -m pip install guppy3

