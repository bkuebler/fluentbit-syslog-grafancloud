FROM fluent/fluent-bit:4.0

COPY config/fluent-bit.conf /fluent-bit/etc/fluent-bit.conf
COPY config/parsers.conf /fluent-bit/etc/parsers.conf
COPY config/prioparser.lua /fluent-bit/etc/scripts/prioparser.lua

EXPOSE 514/udp
EXPOSE 514/tcp
