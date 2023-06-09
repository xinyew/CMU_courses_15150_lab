#!/usr/bin/env bash

# Change directory to the directory of the script
cd "$(dirname "$0")"


# TODO: Change these variables for your course
CMULAB_COURSE="15150" # insert course number here
CMULAB_LOC="https://15150lab.fun" # insert hosting URL here (without trailing /)


# Generate location for QR Code
CMULAB_QRCODE_LOC="${HOME}/.${CMULAB_COURSE}cmulab.png"


# Create the QR Code
unameOut="$(uname -s)"
case "${unameOut}" in
    Darwin*)    ./.checkin_mac $CMULAB_COURSE $CMULAB_LOC
                open ${CMULAB_QRCODE_LOC}
                exit;;
    *)          ./.checkin_gnu $CMULAB_COURSE $CMULAB_LOC;;
esac

# Display the QR Code if possible
if xset q &>/dev/null; then
  echo "Opening QR Code, please wait."
  display ${CMULAB_QRCODE_LOC}
elif ! [ -n "$SSH_CLIENT" ] && ! [ -n "$SSH_TTY" ]; then
  echo "Opening QR Code, please wait."
  display ${CMULAB_QRCODE_LOC}
fi

# Otherwise, they're probably on Windows without an Xserver...
# We just have to exit and deal with a lower error-correcting code...
rm ${CMULAB_QRCODE_LOC}

