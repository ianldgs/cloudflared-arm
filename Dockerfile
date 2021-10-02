FROM alpine

ADD --chmod=777 https://github.com/cloudflare/cloudflared/releases/download/2021.9.1/cloudflared-linux-arm /bin/cloudflared

# RUN chmod +x /bin/cloudflared

ENTRYPOINT ["/bin/cloudflared", "--no-autoupdate"]
CMD ["version"]
