FROM ubuntu:focal as builder

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
      make python3 python3-venv zip curl \
      latexmk texlive-latex-recommended texlive-latex-extra \
    && apt-get clean && \
    rm -rf /var/lib/apt /var/cache/apt && \
    pip install --upgrade pip setuptools
