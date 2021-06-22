#!/bin/bash

gitlab_version="14.0.0"

# sha256sum found here: https://packages.gitlab.com/gitlab
gitlab_debian_version="buster"

gitlab_x86_64_buster_source_sha256="fc395f2f6150ab081dfb5ab012c2273be4d15d3d0dd4b9cc07aa793dcf27c67b"

gitlab_arm64_buster_source_sha256="aa2924f935e02e06f52320795e2d4839181ea0d0d410786f44ae4df86d2fc90d"

gitlab_arm_buster_source_sha256="3b52c9d414974b2c6c639f881e2c736c9790eac16fcb070ce82bcce52b8958a2"

architecture=$(ynh_app_setting_get --app="$app" --key=architecture)

if [ "$architecture" = "x86-64" ]; then
	gitlab_source_sha256=$gitlab_x86_64_buster_source_sha256
elif [ "$architecture" = "arm64" ]; then
	gitlab_source_sha256=$gitlab_arm64_buster_source_sha256
elif [ "$architecture" = "arm" ]; then
	gitlab_source_sha256=$gitlab_arm_buster_source_sha256
fi

gitlab_filename="gitlab-ce-${gitlab_version}.deb"

# Action to do in case of failure of the package_check
package_check_action() {
	ynh_backup_if_checksum_is_different --file="$config_path/gitlab.rb"
	cat <<EOF >> "$config_path/gitlab.rb"
# Last chance to fix Gitlab
package['modify_kernel_parameters'] = false
EOF
	ynh_store_file_checksum --file="$config_path/gitlab.rb"
}
