FROM alpine

ADD https://github.com/cloudflare/cloudflared/releases/download/2021.9.1/cloudflared-linux-arm /bin/cloudflared

RUN chmod +x /bin/cloudflared

ENTRYPOINT ["cloudflared", "--no-autoupdate"]
CMD ["version"]
