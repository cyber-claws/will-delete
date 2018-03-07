# Pull the base container with a bootstrapped installation of conda and python 3.6 that is ready to use.
FROM conda/miniconda3-centos7

WORKDIR /App

COPY . /App
# Edit this
ARG CSV_FILE_DIR=/App


ENV CSV_FILE_DIR $CSV_FILE_DIR

RUN conda install -c anaconda jupyter && \
    conda install -c intel pandas && \
    conda install -c intel/label/beta2017 pandas

# you can run comands to check the installed versions.

EXPOSE 9000

CMD [ "Jupyter" "notebook" ]