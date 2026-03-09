#!/bin/bash
# Build script for Vercel - replaces env var placeholders

set -e

# Default value if env var is not set
RESEARCH_BACKEND="${RESEARCH_BACKEND:-https://server.settlfines.com/webhook/web/research}"

# Create dist directory
mkdir -p dist

# Copy and replace placeholders
sed "s|__RESEARCH_BACKEND__|${RESEARCH_BACKEND}|g" index.html > dist/index.html

# Copy assets
cp -r assets dist/

echo "Build complete. RESEARCH_BACKEND=${RESEARCH_BACKEND}"
