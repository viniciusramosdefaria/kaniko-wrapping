FROM gcr.io/kaniko-project/executor:latest


FROM alpine:latest

COPY --from=0 /kaniko/executor /kaniko/executor

COPY run.sh .

RUN chmod 0777 run.sh

ENTRYPOINT ["/run.sh"]