FROM jupyter/minimal-notebook:latest
WORKDIR $HOME/work
# ENV JUPYTER_ENABLE_LAB yes

COPY requirements.txt /tmp/
RUN python -m pip install --requirement /tmp/requirements.txt

