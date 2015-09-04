###### QNIBTerminal child
FROM qnib/terminal:fd22

RUN dnf install -y chkconfig
ENV JAVA_HOME=/opt/jdk1.8.0_60 \
    JRE_HOME=/opt/jdk1.8.0_60/jre \
    JAVA_FILE=jdk-8u60-linux-x64.tar.gz \
    JAVA_DIR=8u60-b27
RUN cd /opt/ && \
    wget -q --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
         "http://download.oracle.com/otn-pub/java/jdk/${JAVA_DIR}/${JAVA_FILE}" && \
    tar xf /opt/${JAVA_FILE} && rm -f /opt/${JAVA_FILE} && \
    unset JAVA_FILE JAVA_DIR
RUN alternatives --install /usr/bin/java java ${JAVA_HOME}/bin/java 1 && \
    alternatives --install /usr/bin/jar jar ${JAVA_HOME}/bin/jar 1 && \
    alternatives --install /usr/bin/javac javac ${JAVA_HOME}/bin/javac 1
