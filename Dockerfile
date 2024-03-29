FROM ubuntu:rolling as builder

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
      make python3 python3-pip python3-venv zip curl \
      latexmk texlive-latex-recommended texlive-latex-extra \
    && apt-get clean && \
    rm -rf /var/lib/apt /var/cache/apt && \
    pip install --upgrade --no-cache pip setuptools sphinx sphinx_rtd_theme
