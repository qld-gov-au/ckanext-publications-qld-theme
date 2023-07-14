#!/usr/bin/env bash
##
# Run tests in CI.
#
set -e


echo "==> Run BDD tests"
ahoy install-site
ahoy cli "rm -r test/screenshots || true"
ahoy test-bdd || (echo "run get-logs.sh for container logs if required"; exit 1)
