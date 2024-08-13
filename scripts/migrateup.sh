#!/bin/bash

if [ -f .env ]; then
    source .env
fi

[ -f "$(dirname "$0")/../.env" ] && source "$(dirname "$0")/../.env"
cd "$(dirname "$0")/../sql/schema" || exit
goose turso $DATABASE_URL up
