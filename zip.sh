#!/bin/bash

TEMPLATE_DIR="project_template"
ZIP_FILE="template.zip"

if [ ! -d "$TEMPLATE_DIR" ]; then
    echo "Error: $TEMPLATE_DIR directory not found"
    exit 1
fi

echo "Creating zip file..."
zip -r "$ZIP_FILE" "$TEMPLATE_DIR"

if [ $? -ne 0 ]; then
    echo "Error: Failed to create zip file"
    exit 1
fi
