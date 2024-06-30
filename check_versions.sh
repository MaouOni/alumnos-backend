#!/bin/bash

# Check Java version
java -version

# Check Maven version
mvn -version

# Build the application
./mvnw clean install
