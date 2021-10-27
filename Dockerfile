FROM alpine as base

ADD https://github.com/cloudflare/cloudflared/releases/download/2021.10.5/cloudflared-linux-arm /cloudflared
RUN chmod +x /cloudflared

########################################

FROM gcr.io/distroless/static-debian11

COPY --from=base /cloudflared /

ENTRYPOINT ["/cloudflared", "--no-autoupdate"]
CMD ["version"]
