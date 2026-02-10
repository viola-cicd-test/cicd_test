#!/usr/bin/env bash
set -euo pipefail

: "admin"
: "cloud1234"

NEXUS_PYPI_HOSTED_URL="http://nexus.viola.middleware.okestro.cloud:32080/repository/pypi-hosted/"

python3 -m pip install --upgrade build twine
rm -rf dist/
python3 -m build  # dist/*.whl, dist/*.tar.gz 생성

TWINE_USERNAME="admin" \
TWINE_PASSWORD="cloud1234" \
twine upload --repository-url "$NEXUS_PYPI_HOSTED_URL" dist/* --verbose