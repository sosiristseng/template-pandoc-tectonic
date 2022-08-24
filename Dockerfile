FROM pandoc/core:2.19.2-ubuntu

WORKDIR /work

# Install apt packages
RUN apt-get update -q \
    && apt-get install -qqy --no-install-recommends \
    libfontconfig1 libgraphite2-3 libharfbuzz0b zlib1g libharfbuzz-icu0 ca-certificates libicu70 \
    liblua5.3-0 librsvg2-bin lua-lpeg libatomic1 libgmp10 libpcre3 libyaml-0-2 zlib1g \
    python3-pip poppler-utils fonts-noto-cjk \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy tectonic binaries and caches
COPY --from=dxjoke/tectonic-docker:0.9.0-alpine-biber /usr/bin/tectonic /usr/local/bin/
COPY --from=dxjoke/tectonic-docker:0.9.0-alpine-biber /usr/bin/biber /usr/local/bin/
COPY --from=dxjoke/tectonic-docker:0.9.0-alpine-biber /root/.cache/Tectonic/ /root/.cache/Tectonic/

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# pandoc commands
CMD ["pandoc", "--pdf-engine=tectonic"]
