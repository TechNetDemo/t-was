FROM ibmcom/websphere-traditional:latest

# Change Admin Console Password
#COPY --chown=was:0 PASSWORD /tmp/PASSWORD

# Deploy Application
COPY --chown=was:root sample.war /work/app/
COPY --chown=was:root install-app.py /work/config/

RUN /work/configure.sh
