#!/bin/bash
set -eu -o pipefail

vagrant up
vagrant ssh -c "~/init.sh"
