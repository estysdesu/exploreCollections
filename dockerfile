FROM jupyter/minimal-notebook:latest
WORKDIR $HOME/work
# ENV JUPYTER_ENABLE_LAB yes

COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt

