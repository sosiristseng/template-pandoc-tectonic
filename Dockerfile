FROM python:3.11.1-slim

ARG lua_version=5.3

WORKDIR /usr/src

# System packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
       ca-certificates=\* \
       liblua$lua_version-0=\* \
       lua-lpeg=\* \
       libatomic1=\* \
       libgmp10=\* \
       libpcre3=\* \
       libyaml-0-2=\* \
       zlib1g=\* \
       fonts-noto-cjk=\* \
       libfontconfig1=\* \
       libgraphite2-3=\* \
       libharfbuzz0b=\* \
       libicu67=\* \
       zlib1g=\* \
       libharfbuzz-icu0=\* \
       libssl1.1=\* \
    && rm -rf /var/lib/apt/lists/*

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
