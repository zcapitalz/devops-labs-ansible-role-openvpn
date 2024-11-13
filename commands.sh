molecule init scenario --driver-name docker run_openvpn_server
pipx install --force --include-deps molecule-plugins[vagrant]@git+https://github.com/ansible-community/molecule-plugins.git
molecule login --host openvpn-server -s run_openvpn_server