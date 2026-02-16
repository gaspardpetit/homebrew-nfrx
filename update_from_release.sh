#!/usr/bin/env bash
set -euo pipefail

REPO="gaspardpetit/nfrx"
FORMULA_DIR="Formula"

echo "Fetching latest release info…"
RELEASE_JSON=$(curl -s https://api.github.com/repos/$REPO/releases/latest)

VERSION=$(echo "$RELEASE_JSON" | jq -r .tag_name | sed 's/^v//')
echo "Latest version: $VERSION"

TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT

echo "Downloading SHA256SUMS.txt…"
curl -sL \
  "https://github.com/$REPO/releases/download/v$VERSION/SHA256SUMS.txt" \
  -o "$TMP/SHA256SUMS.txt"

sha() {
  grep " $1$" "$TMP/SHA256SUMS.txt" | awk '{print $1}'
}

update_formula() {
  local formula=$1
  local binary=$2

  echo "Updating $formula"

  sed -i.bak \
    -e "/darwin_arm64/{n;s|sha256 \".*\"|sha256 \"$(sha nfrx_darwin_arm64_v$VERSION.tar.gz)\"|;}" \
    "$FORMULA_DIR/$formula"

  sed -i.bak \
    -e "/darwin_amd64/{n;s|sha256 \".*\"|sha256 \"$(sha nfrx_darwin_amd64_v$VERSION.tar.gz)\"|;}" \
    "$FORMULA_DIR/$formula"

  sed -i.bak \
    -e "/linux_arm64/{n;s|sha256 \".*\"|sha256 \"$(sha nfrx_linux_arm64_v$VERSION.tar.gz)\"|;}" \
    "$FORMULA_DIR/$formula"

  sed -i.bak \
    -e "/linux_amd64/{n;s|sha256 \".*\"|sha256 \"$(sha nfrx_linux_amd64_v$VERSION.tar.gz)\"|;}" \
    "$FORMULA_DIR/$formula"

  rm "$FORMULA_DIR/$formula.bak"
}

update_formula nfrx.rb nfrx
update_formula nfrx-llm.rb nfrx-llm
update_formula nfrx-mcp.rb nfrx-mcp

echo
echo "Done."
echo "Review changes, then:"
echo "  git commit -am \"nfrx $VERSION\""
