#!/bin/bash

delay=0.06  # Delay between characters (in seconds)

# Function to type a command with static ">"
type_command() {
  local cmd="$1"
  echo -n "> "
  for ((i = 0; i < ${#cmd}; i++)); do
    echo -n "${cmd:$i:1}"
    sleep "$delay"
  done
  echo
}

# Function to print normal output lines
say() {
  echo "$1"
  sleep 0.35
}

# Start profile output
clear
sleep 0.5

type_command "whoami"
printf "
  ___                  _  _          _   _               
 | _ \___ ___ __ ___  | || |___ __ _| |_| |_  ___ _ _ ___
 |   / -_) -_) _/ -_) | __ / -_) _\` |  _| ' \/ -_) '_(_-<
 |_|_\___\___\__\___| |_||_\___\__,_|\__|_||_\___|_| /__/
Full-stack developer. Builder of fast, resilient tools.
"
echo
sleep 1

type_command "ls tech-stack"
say "- Python"
say "- PHP"
say "- PostgreSQL"
say "- TypeScript"
say "- Laravel"
say "- AWS"
echo
sleep 1

type_command "cat side-projects.txt"
say "- Always studying"
say "- Working through Boot.dev courses"
echo
sleep 1

type_command "uptime"
say "Coding professionally since: 2023-01-30"
say "Location: United States"
say "Status: Open to collaboration"
echo
sleep 1

type_command "contact --email"
say "📬 r12industriesjack@gmail.com"
say "🔗 https://github.com/Void-fofx"
echo
sleep 1

type_command "clear"
