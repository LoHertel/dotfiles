#!/bin/sh
{{- if eq .chezmoi.osRelease.name "Ubuntu" }}
    sudo apt update
    sudo apt install pipx
    pipx ensurepath
{{ end -}}

pipx install ansible
pipx inject ansible psycopg2

pipx list | grep pipenv
if [ $? -eq 0 ]; then
    pipx install pipenv
fi

pipx list | grep poetry
if [ $? -eq 0 ]; then
    pipx install poetry
fi
