#!/bin/sh
echo -ne '\033c\033]0;Menu template\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/menu_template.x86_64" "$@"
