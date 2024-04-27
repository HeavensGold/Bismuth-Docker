FROM bismuth-node:base

MAINTAINER none

EXPOSE 6969

#COPY build-requirements.txt /build-requirements.txt

RUN set -ex ;\
    echo "Fetching Hypernode"; \
    cd /; \
    if [ -f ./beta99.zip ]; then \
        rm beta99.zip; \
    fi; \
    wget https://github.com/HeavensGold/hypernode/archive/beta99.zip; \
    unzip beta99.zip; \
    mv hypernode-beta99 hypernode; \
    cd hypernode; \
    echo "Installing PIP requirements"; \
    python3 -m pip install wheel; \
    python3 -m pip install fastecdsa; \
    python3 -m pip install -r requirements.txt; \
    echo "Adjusting cron1.py for python3"; \
    sed -i -e "s/python3.7'/python3'/g" ./crontab/cron1.py; \


COPY start.sh /start.sh
COPY stop.sh /stop.sh
#COPY bootstrap_node.sh /Bismuth/bootstrap_node.sh
#COPY reset_node.sh /Bismuth/reset_node.sh
# COPY static.ref to static


# Config config_custom.txt

VOLUME /custom /Bismuth/static /hypernode/main/data

WORKDIR /hypernode

CMD /start.sh
