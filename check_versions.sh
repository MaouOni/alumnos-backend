#!/bin/bash

# Download and extract Java
wget -O /tmp/openjdk-17_linux-x64_bin.tar.gz https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.tar.gz
mkdir -p /opt/render/project/.java
tar -xzf /tmp/openjdk-17_linux-x64_bin.tar.gz -C /opt/render/project/.java --strip-components=1

# Set JAVA_HOME and update PATH
export JAVA_HOME=/opt/render/project/.java
export PATH=$JAVA_HOME/bin:$PATH

# Download and extract Maven
wget -O /tmp/apache-maven-3.8.4-bin.tar.gz https://archive.apache.org/dist/maven/maven-3/3.8.4/binaries/apache-maven-3.8.4-bin.tar.gz
mkdir -p /opt/render/project/.m2
tar -xzf /tmp/apache-maven-3.8.4-bin.tar.gz -C /opt/render/project/.m2 --strip-components=1

# Update PATH for Maven
export MAVEN_HOME=/opt/render/project/.m2
export PATH=$MAVEN_HOME/bin:$PATH

# Verify installations
java -version
mvn -version

# Build the application
./mvnw clean install
