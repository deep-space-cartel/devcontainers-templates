#!/bin/bash
TEMPLATE_ID="$1"

devcontainer templates apply --template-id "ghcr.io/partcad/devcontainers-templates/${TEMPLATE_ID}" --workspace-folder "build/${TEMPLATE_ID}" --log-level trace
# TODO: @alexanderilyin use "--label" option to add metadata to the image
devcontainer build --push --log-level debug --image-name "ghcr.io/partcad/devcontainer-${TEMPLATE_ID}:latest" --workspace-folder "build/${TEMPLATE_ID}"
