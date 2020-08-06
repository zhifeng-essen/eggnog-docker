FROM essen1999/miniconda-base:4.8.3

RUN conda install eggnog-mapper==1.0.3 && \
    conda clean --all --yes

ENTRYPOINT [ "/usr/bin/tini", "--" ]
CMD [ "/bin/bash" ]
