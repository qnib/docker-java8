###### QNIBTerminal child
#FROM qnib/terminal:cos7
FROM qnib/terminal

RUN yum install -y java-1.8.0-openjdk-headless
ENV JAVA_HOME /usr/lib/jvm/jre-1.8.0
