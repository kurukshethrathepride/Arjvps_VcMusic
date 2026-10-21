
#!/usr/bin/env bash
set -e

REPO_URL="https://github.com/kurukshethrathepride/Arjvps_VcMusic"
APP_DIR="/tmp/Arjvps_VcMusic"

echo "Cloning Repo...."

# Remove the previous clone to prevent directory conflicts
rm -rf "$APP_DIR"

if [ -z "${BRANCH:-}" ]; then
  echo "Cloning main branch...."
  git clone --depth 1 "$REPO_URL" "$APP_DIR"
else
  echo "Cloning $BRANCH branch...."
  git clone --depth 1 --branch "$BRANCH" "$REPO_URL" "$APP_DIR"
fi

cd "$APP_DIR"

echo "Installing dependencies...."
pip3 install -U -r requirements.txt

echo "Starting Bot...."
exec python3 -u main.py
