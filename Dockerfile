FROM darribas/gds_py:2.0

RUN pip install deprecated
RUN pip install --no-deps git+https://github.com/pysal/pysal.git

# Local docs
RUN rm -R work/
COPY ./docs/content/intro.md ${HOME}/README.md
RUN mkdir ${HOME}/content
COPY ./docs/content/ ${HOME}/content/
RUN rm ${HOME}/content/intro.md
# Fix permissions
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
