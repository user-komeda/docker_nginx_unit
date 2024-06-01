FROM almalinux:minimal

COPY ./unit.repo /etc/yum.repos.d/unit.repo
#RUN microdnf config-manager --enable nginx-mainline 
#RUN microdnf makecache
RUN microdnf install -y unit
RUN microdnf install -y  unit-devel unit-go unit-jsc8 unit-jsc11  unit-perl unit-php unit-python39 unit-wasm

CMD ["unitd", "--no-daemon", "--control", "unix:/var/run/unit/control.sock"]

