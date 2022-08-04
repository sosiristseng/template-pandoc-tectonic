FROM python:3.10-slim

# Install apt packages
RUN apt-get update -qq \
    && apt-get install -qqy --no-install-recommends \
    libfontconfig1 libgraphite2-3 libharfbuzz0b libicu67 zlib1g libharfbuzz-icu0 libssl1.1 ca-certificates \
    liblua5.3-0 librsvg2-bin lua-lpeg libatomic1 libgmp10 libpcre3 libyaml-0-2 zlib1g \
    poppler-utils fonts-noto-cjk \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy tectonic binaries and caches
COPY --from=dxjoke/tectonic-docker:0.9.0-bullseye-biber /usr/bin/tectonic /usr/local/bin/
COPY --from=dxjoke/tectonic-docker:0.9.0-bullseye-biber /usr/bin/biber /usr/local/bin/
COPY --from=dxjoke/tectonic-docker:0.9.0-bullseye-biber /root/.cache/Tectonic/ /root/.cache/Tectonic/

# Copy pandoc binaries
COPY --from=pandoc/core:2.19.0-ubuntu /usr/local/bin/pandoc /usr/local/bin/
COPY --from=pandoc/core:2.19.0-ubuntu /usr/local/bin/pandoc-crossref /usr/local/bin/

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -U pip wheel setuptools && pip install --no-cache-dir -r requirements.txt

# pandoc commands
CMD ["pandoc", "--pdf-engine=tectonic"]
