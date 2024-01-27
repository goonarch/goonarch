#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="goonarch"
iso_label="GOONARCH_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="GoonArch <https://github.com/goonarch>"
iso_application="GoonArch Live/Rescue CD"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('uefi-x64.grub.esp'
           'uefi-x64.grub.eltorito'

       )

arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="ext4+squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-b' '1M' '-Xbcj' 'x86')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/home/goonarch/.local/bin/"]="0:0:755"
  ["/home/goonarch/.config/hypr/scripts/"]="0:0:755"

)
