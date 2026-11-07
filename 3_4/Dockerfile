FROM docker:25-git

COPY builder.sh /builder.sh

RUN chmod +x /builder.sh

ENTRYPOINT ["/builder.sh"]