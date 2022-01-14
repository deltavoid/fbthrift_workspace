FROM deltavoid/debian_cpp_basic:2022.01.13


ADD ./ /repos/fbthrift_workspace

RUN cd /repos/fbthrift_workspace && git submodule update --init --recursive

RUN cd /repos/fbthrift_workspace && ./scripts/build.sh
