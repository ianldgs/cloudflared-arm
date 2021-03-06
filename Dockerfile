FROM amd64/alpine as base

ADD https://github.com/cloudflare/cloudflared/releases/download/2021.11.0/cloudflared-linux-arm /cloudflared
RUN chmod +x /cloudflared

########################################

FROM alpine

COPY --from=base /cloudflared /

ENTRYPOINT ["/cloudflared", "--no-autoupdate"]
CMD ["version"]
