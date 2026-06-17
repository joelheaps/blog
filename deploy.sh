#!/usr/bin/env bash
# Deploy the Hugo blog to chicago-web1.
# Pattern matches other static sites: build locally with mise, rsync public/ into
# /root/web/<name>/public, Caddy serves it. Host header in /root/web/caddy/config/Caddyfile.
set -euo pipefail

# Bootstrap mise (Hugo pinned in mise.toml).
export PATH="$HOME/.local/bin:$PATH"
if ! command -v mise >/dev/null 2>&1; then
    curl -fsSL https://mise.run | sh
fi
eval "$(mise activate bash)"
mise trust && mise install

# Build.
rm -rf public
mise exec -- hugo --minify

# Push. Public/ already exists from the build.
sshpass -p 'Scorebook.Outrank.Conform1' \
    rsync -avz --delete -e ssh public/ \
    root@100.100.80.106:/root/web/blog/public/

# Reload Caddy so any Caddyfile changes (e.g. host header) take effect.
sshpass -p 'Scorebook.Outrank.Conform1' ssh root@100.100.80.106 \
    'docker exec caddy-caddy-1 caddy reload --config /etc/caddy/Caddyfile --force' \
    >/dev/null

echo "blog deployed to joelheaps.com (https)"
