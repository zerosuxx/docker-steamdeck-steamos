FROM zerosuxx/steamdeck-steamos-recovery:latest

RUN sudo systemd-tmpfiles --create || exit 0

# setup sudo with no password for deck user
RUN groupadd sudo-no-passwd \
    && echo '%sudo-no-passwd ALL=(ALL:ALL) NOPASSWD: ALL' > /etc/sudoers.d/zz-sudo-no-passwd \
    && usermod -a -G sudo-no-passwd deck

USER deck

WORKDIR /home/deck

RUN echo -e "deck\ndeck" | passwd

RUN sudo steamos-readonly disable || exit 0
