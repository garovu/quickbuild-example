#!/bin/bash

# Get the current working directory
DEST_DIR=$(pwd)

# Change the version that you want to download
FILE_URL="https://pmease.com/artifacts/5951/quickbuild-14.0.22.tar.gz"

# Download the file
curl -o "$DEST_DIR/quickbuild-14.0.22.tar.gz" "$FILE_URL"

# Extract the downloaded file
tar -xvf quickbuild-14.0.22.tar.gz

# Rename the extracted directory
mv quickbuild-14.0.22 quickbuild

echo "Download completed: $DEST_DIR/quickbuild"

# Download the PostgreSQL JDBC driver

JDBC_URL="https://jdbc.postgresql.org/download/postgresql-42.7.4.jar

curl -o "$DEST_DIR/quickbuild/plugins/com.pmease.quickbuild.libs/postgresql-42.7.4.jar" "$JDBC_URL"

echo "PostgreSQL JDBC Driver installed"
