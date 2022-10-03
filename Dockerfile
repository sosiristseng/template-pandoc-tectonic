FROM mambaorg/micromamba:0.26.0
USER root
RUN apt-get update && \
    apt-get install -y fonts-noto-cjk --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*
COPY environment.yml /tmp/environment.yml
RUN micromamba install -y -n base -f /tmp/environment.yml && \
    micromamba clean --all --yes
