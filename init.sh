#!/bin/bash
# init.sh — Initialize grc-compliance-framework on GitHub
# Run this ONCE after downloading/cloning this folder locally.
# Requires: git, GitHub CLI (gh) installed and authenticated.

set -e

REPO_NAME="grc-compliance-framework"
GITHUB_USER="JaxVN"
DESCRIPTION="GRC compliance framework mapping ISO 27001, NIST CSF, and ACSC Essential Eight to enterprise IT controls (M365, Wazuh, Action1)"

echo "=== GRC Compliance Framework — GitHub Init ==="
echo ""

# 1. Init git
git init
git add .
git commit -m "chore: initial framework structure v1.0.0"

# 2. Create public GitHub repo via gh CLI
gh repo create "$GITHUB_USER/$REPO_NAME" \
  --public \
  --description "$DESCRIPTION" \
  --source=. \
  --remote=origin \
  --push

echo ""
echo "✓ Repo created: https://github.com/$GITHUB_USER/$REPO_NAME"
echo ""
echo "=== Next steps ==="
echo "1. Go to https://zenodo.org → Settings → GitHub"
echo "2. Toggle ON: $REPO_NAME"
echo "3. Create a GitHub Release with tag v1.0.0"
echo "4. Zenodo will auto-create a draft record"
echo "5. Fill in metadata (ORCID: 0009-0000-9340-8520) and publish"
echo "6. Copy the DOI back into CITATION.cff and README.md (replace PLACEHOLDER)"
echo ""
echo "Done!"
