###### QNIBTerminal child
FROM qnib/terminal

RUN dnf install -y java-1.8.0-openjdk-headless
ENV JAVA_HOME /usr/lib/jvm/jre-1.8.0
