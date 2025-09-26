cleanup() {
  printf '\033[?25h\033[0m\n'
}

trap 'cleanup; exit 0' INT TERM HUP EXIT

printf '\033[?25l'

while :; do
  printf '\033[2J\033[H'
  date +"%Y-%m-%d %H:%M:%S %Z"
  sleep 1
done
