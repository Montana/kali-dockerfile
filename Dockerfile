FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y kali-linux-full && \
    apt-get clean

RUN apt-get install -y nmap ncat && \
    apt-get clean

EXPOSE 80 443

CMD ["/bin/bash"]
