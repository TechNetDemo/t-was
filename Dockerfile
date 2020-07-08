FROM ibmcom/websphere-traditional:latest

# Change Admin Console Password
#COPY --chown=was:0 PASSWORD /tmp/PASSWORD

# Deploy Application
COPY --chown=was:0 sample.war /work/app/
COPY --chown=was:0 install-app.py /work/config/

#RUN /work/configure.sh
