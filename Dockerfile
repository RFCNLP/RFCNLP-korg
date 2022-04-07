FROM ubuntu:latest
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y upgrade
RUN DEBIAN_FRONTEND="noninteractive" \
	apt-get install -y apt-utils python3-pip
RUN python3 -m pip install --upgrade pip
RUN DEBIAN_FRONTEND="noninteractive"     \
	apt-get install -y build-essential   \
                       python-dev        \
                       python-setuptools \
                       git               \
                       bison             \
                       flex              \
                       graphviz          \
                       time
RUN pip3 install green
# Install Spin
RUN git clone https://github.com/nimble-code/Spin.git
WORKDIR Spin
WORKDIR Bin
RUN gunzip spin651_linux64.gz
RUN chmod +x spin651_linux64
RUN cp spin651_linux64 /usr/local/bin/spin
WORKDIR ..
# Copy KORG
COPY . KORG
WORKDIR KORG
RUN pip3 install .
# Test KORG installation
RUN make test
# Reproduce results from KORG ArXiV paper
RUN make experimentKorg
# Check that they match what was expected
# RUN python3 analysis/compare2arxiv.py
entrypoint [""]