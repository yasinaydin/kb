RECIPE_PKGS="cockpit cockpit-pcp pcp"

RECIPE_FOLDERS_ROOT=(
  "/etc/cockpit"
  "/etc/systemd/system/sockets.target.wants/cockpit.socket"
)

RECIPE_USERS_DELETE=(
  "cockpit-ws"
  "cockpit-wsinstance"
  "pcp"
)

RECIPE_GROUPS_DELETE=(
  "cockpit-ws"
  "cockpit-wsinstance"
  "pcp"
)
