FROM alpine:3.4

RUN apk add --update-cache curl tar && rm -rf rm -rf /var/cache/apk/*

RUN curl -L https://github.com/spf13/hugo/releases/download/v0.17/hugo_0.17_Linux-64bit.tar.gz > hugo-0.17.tgz && \
  tar -xvzf hugo-0.17.tgz && \
  mv hugo_0.17_linux_amd64/hugo_0.17_linux_amd64 /bin/hugo && \
  rm -rf hugo_0.17_linux_amd64

ADD run-hugo /run-hugo
ENTRYPOINT ["/run-hugo"]
CMD ["server", "--source=${HUGO_SRC}", "--theme=${HUGO_THEME}", "--buildDrafts=${HUGO_BUILD_DRAFT}", "--baseUrl=${HUGO_BASE_URL}", "--watch", "--destination=${HUGO_DEST}", "--appendPort=false"]

EXPOSE 1313
