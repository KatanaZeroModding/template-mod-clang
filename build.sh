#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
ID="${KZM_MOD_ID:-my-mod}"
OUT="${ROOT}/dist/${ID}.dll"
CC="${CC:-i686-w64-mingw32-gcc}"
command -v "$CC" >/dev/null 2>&1 || { echo "Need $CC" >&2; exit 1; }
mkdir -p "${ROOT}/dist"
"$CC" -shared -O2 -Wall -DKZM_PLUGIN_EXPORTS \
  -o "$OUT" "${ROOT}/src/plugin.c"
echo "Built ${OUT}"
