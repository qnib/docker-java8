###### QNIBTerminal child
FROM qnib/terminal:cos7

RUN echo "2016-01-24.1" && \
    yum clean all && \
    yum install -y java-1.8.0-openjdk-headless
ENV JAVA_HOME /usr/lib/jvm/jre-1.8.0
