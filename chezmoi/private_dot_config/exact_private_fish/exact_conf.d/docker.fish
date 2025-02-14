# compose
abbr --add dc docker compose
abbr --add dcd docker compose down
abbr --add dcdr docker compose down --rmi local --volumes
abbr --add dcub docker compose up --build

# images
abbr --add drmid "docker image rm \$(docker image ls -f \"dangling=true\" -q)"
