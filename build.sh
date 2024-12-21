#!/usr/bin/env bash

set -euox pipefail

dnf -y install @cosmic-desktop @cosmic-desktop-apps
dnf clean
