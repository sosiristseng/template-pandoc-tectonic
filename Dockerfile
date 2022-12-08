FROM python:3.11.1-slim

WORKDIR /usr/src

# System packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends fonts-noto-cjk libfontconfig1 libgraphite2-3 libharfbuzz0b libicu67 zlib1g libharfbuzz-icu0 libssl1.1 ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Tectonic
COPY --from=dxjoke/tectonic-docker:0.9.0-bullseye-biber /usr/bin/tectonic /usr/bin/
COPY --from=dxjoke/tectonic-docker:0.9.0-bullseye-biber /root/.cache/Tectonic/ /root/.cache/Tectonic/
COPY --from=dxjoke/tectonic-docker:0.9.0-bullseye-biber /usr/bin/biber /usr/bin/

# Pandoc
COPY --from=pandoc/core:2.19.2-ubuntu /usr/local/bin/pandoc /usr/bin/
COPY --from=pandoc/core:2.19.2-ubuntu /usr/local/bin/pandoc-crossref /usr/bin/

# Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD ["pandoc"]
