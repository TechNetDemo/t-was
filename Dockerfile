FROM ibmcom/websphere-traditional:9.0.5.3-ubi8-amd64

# Change Admin Console Password
COPY --chown=was:root PASSWORD /tmp/PASSWORD

# Deploy Application
COPY --chown=was:root sample.war /work/app/
COPY --chown=was:root install-app.py /work/config/

RUN /work/configure.sh
