#!/bin/bash

SCRIPT_ORIGIN_PATH=$(dirname "$0")
TEMPORARY_DIRECTORY="$1"

# Useful to improve performance with WSL
if [[ -n $TEMPORARY_DIRECTORY ]]; then
  rm -rf "$TEMPORARY_DIRECTORY"
  mkdir -p "$TEMPORARY_DIRECTORY"
  cp -r "$SCRIPT_ORIGIN_PATH/../docs" "$TEMPORARY_DIRECTORY/docs"
  cp -r "$SCRIPT_ORIGIN_PATH/../docs_includes" "$TEMPORARY_DIRECTORY/docs_includes"
  cp -r "$SCRIPT_ORIGIN_PATH/../CHANGELOG.md" "$TEMPORARY_DIRECTORY/CHANGELOG.md"
  cp -r "$SCRIPT_ORIGIN_PATH/../mkdocs.yml" "$TEMPORARY_DIRECTORY/mkdocs.yml"
  cp -r "$SCRIPT_ORIGIN_PATH/../requirements-docs.txt" "$TEMPORARY_DIRECTORY/requirements-docs.txt"
  cp -r "$SCRIPT_ORIGIN_PATH/../.git" "$TEMPORARY_DIRECTORY/.git"
else
  TEMPORARY_DIRECTORY="$SCRIPT_ORIGIN_PATH/.."
fi

# Checks if 'uv' is installed
if uv --version &> /dev/null
then
    echo "'$(uv --version)' exists"
else
    echo "'uv' doesn't exist ! Run 'curl -LsSf https://astral.sh/uv/install.sh | sh'"
    exit 1
fi

uv venv --python 3.11 "$TEMPORARY_DIRECTORY/.venv"
source "$TEMPORARY_DIRECTORY/.venv/bin/activate"
uv pip install --upgrade --force-reinstall -e ".[docs]"

cd "$TEMPORARY_DIRECTORY" || exit 2
PYTHONPATH="$TEMPORARY_DIRECTORY"
export PYTHONPATH
mkdocs serve
