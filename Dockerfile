FROM ibmcom/websphere-traditional:latest
COPY --chown=1001:0 sample.war /work/app/
COPY --chown=1001:0 install-app.py /work/config/
RUN /work/configure.sh
