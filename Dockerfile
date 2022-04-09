FROM --platform=linux/x86_64 ubuntu:latest AS builder

WORKDIR /app

RUN apt update \
 && apt install -y binutils nasm ninja-build python3

COPY . .

RUN ./configure \
 && ninja

CMD ["bash"]


# TODO: Use this multi-stage Dockerfile to generate an Ilo binary for MacOS M1 (Pro)

FROM --platform=linux/x86_64 ubuntu:latest

WORKDIR /tmp

RUN apt update \
 && apt install -y binutils nasm ninja-build python3

COPY --from=builder /app/build/ilo /bin/ilo

CMD ["bash"]
