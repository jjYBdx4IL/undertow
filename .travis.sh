#!/bin/bash

set -Eev

choco install unzip || :
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java 11.0.2-open
sdk install maven 3.6.0
mvn clean install

