FROM osrg/ryu-book

ENV APT_PKGS="\
    iptables \
    wireshark"

RUN apt update; \
    apt dist-upgrade -y; \
    DEBIAN_FRONTEND=noninteractive apt install -y ${APT_PKGS};

WORKDIR /opt

ADD . /opt
