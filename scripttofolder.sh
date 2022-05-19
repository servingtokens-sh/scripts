#!/bin/bash
set -euo pipefail

(gzip script.txt > \
/pages/sandbox-runtime/api/script.txt.gz | \

zcat /sandbox-runtime/api/script.txt.gz >> \
/pages/sandbox-runtime/api/script.sh | \
chmod -w ./sandbox-runtime/api/script.sh | \
chmod +x ./sandbox-runtime/api/script.sh | \

zcat /sandbox-runtime/api/script.txt.gz >> \
/pages/sts-runtime/api/script.sh | \
chmod -w /pages/sts-runtime/api/script.sh | \
chmod +x /pages/sts-runtime/api/script.sh)
