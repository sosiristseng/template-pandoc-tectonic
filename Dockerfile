FROM python:3.10-slim

# Install apt packages
RUN apt-get update -qq \
    && apt-get install -qqy --no-install-recommends \
       libfontconfig1 libgraphite2-3 libharfbuzz0b libicu67 zlib1g libharfbuzz-icu0 libssl1.1 ca-certificates \
       poppler-utils librsvg2-bin fonts-noto-cjk \ 
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy tectonic binary files and caches
COPY --from=dxjoke/tectonic-docker:0.8.0-bullseye-biber /usr/bin/tectonic /usr/local/bin/
COPY --from=dxjoke/tectonic-docker:0.8.0-bullseye-biber /usr/bin/biber /usr/local/bin/
COPY --from=dxjoke/tectonic-docker:0.8.0-bullseye-biber /root/.cache/Tectonic/ /root/.cache/Tectonic/

# Copy pandoc binary
COPY --from=pandoc/core:2.17.1 /usr/local/bin/pandoc /usr/local/bin/
COPY --from=pandoc/core:2.17.1 /usr/local/bin/pandoc-crossref /usr/local/bin/

# pandoc commands
CMD ["pandoc", "--pdf-engine=tectonic"]
