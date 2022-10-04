From ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC
ENV PATH="/root/.cargo/bin:${PATH}" CC=clang-15 CXX=clang++-15

RUN apt update \
	&& apt install -y build-essential curl cmake git wget lsb-release software-properties-common 

RUN curl https://sh.rustup.rs -sSf | bash -s -- --default-toolchain 1.58.0 -y

RUN wget https://apt.llvm.org/llvm.sh \
	&& chmod +x ./llvm.sh \
	&& ./llvm.sh 15 no

RUN rustup default nightly
RUN rustup update