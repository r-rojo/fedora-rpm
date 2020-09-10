FROM fedora:latest
RUN dnf install -y python3 python3-pip python3-devel python3-pybind11 cmake make libuuid-devel json-c-devel gcc clang vim hwloc-devel tbb-devel gdb doxygen python-sphinx fontawesome-fonts fontawesome-fonts-web python3-breathe python3-recommonmark python3-sphinx_rtd_theme fedora-review rpm-build rpmdevtools git
RUN usermod -G mock root
RUN echo 'config_opts["use_nspawn"] = False' >> /etc/mock/site-defaults.cfg
WORKDIR /root
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

