# Use the Robot Framework image as the base image
FROM python:3.9-slim

# Install Git and necessary dependencies for Chrome and Chromedriver
RUN apt-get update && \
    apt-get install -y sudo wget unzip xvfb libxi6 libgconf-2-4 curl

RUN pip install robotframework
RUN pip install robotframework-seleniumlibrary
# Install Chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    dpkg -i google-chrome-stable_current_amd64.deb || apt-get -f install -y && \
    rm google-chrome-stable_current_amd64.deb


# Set the working directory in the container
WORKDIR /opt/robotframework/tests



# Install necessary system packages
RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/purva-vvdn/Robotdemo.git
# COPY . .

CMD [ "robot","." ]