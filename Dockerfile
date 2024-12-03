FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
x11-apps \
xauth \
&& rm -rf /var/lib/apt/lists/*

ENV DISPLAY=host.docker.internal:0

CMD [ "xeyes" ]

# FROM ubuntu:latest

# RUN apt-get update && apt-get install -y \
#     openjdk-11-jre \
#     x11-apps \
#     xauth \
#     && rm -rf /var/lib/apt/lists/*

# ENV DISPLAY=host.docker.internal:0

# COPY calc.jar /app/calc.jar

# CMD ["java", "-jar", "/app/calc.jar"]
