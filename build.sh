#!/usr/bin/env bash

set -euox pipefail

dnf5 -y install @cosmic-desktop @cosmic-desktop-apps
dnf5 clean
