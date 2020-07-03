# t-was

Deploy Traditional WAS app image on Openshift

# User Group
user: 1001
group: 0

# Port 
app 9080, 9443

admin 9060 9043


# Dockerfile
FROM websphere-liberty:kernel

COPY --chown=was:root PASSWORD /tmp/PASSWORD

COPY --chown=was:root sample.war /work/app/

COPY --chown=was:root install-app.py /work/config/

RUN /work/configure.sh
