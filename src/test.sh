#!/bin/bash

EXPECTED_OUTPUT="Hello, Test!"

OUTPUT=$(node -e "console.log(require('./src/app')('Test'))")

if [ "$OUTPUT" == "$EXPECTED" ]; then
    echo "Test passed!"
    exit 0
else
    echo "Test failed! Expected '$EXPECTED_OUTPUT', but got '$OUTPUT'"
    exit 1
fi
