#!/bin/sh

# ##############################################################################
#
#   Gradle start up script for POSIX systems
#
# ##############################################################################

APP_BASE_NAME=`basename "$0"`
DIRNAME=`dirname "$0"`

# Attempt to locate and run gradle
if command -v gradle >/dev/null 2>&1; then
    exec gradle "$@"
fi

# Fallback: check if java and wrapper jar exist
if [ -f "$DIRNAME/gradle/wrapper/gradle-wrapper.jar" ]; then
    exec java -jar "$DIRNAME/gradle/wrapper/gradle-wrapper.jar" "$@"
fi

# Fallback to direct gradle call
exec gradle "$@"
