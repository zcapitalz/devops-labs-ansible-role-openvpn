Role Name
=========

Spin up OpenVPN server(s) and CA server, create user connection files.

Role Variables
--------------

TODO

Example Playbook
----------------

    ---
    - hosts: ca_server
    become: true
    roles:
        - openvpn
    tasks:
        - name: Configure CA server
        import_tasks: ../../ansible-roles/openvpn/tasks/ca_server.yml

    - hosts: openvpn_servers
    vars_files:
        - ../vars/openvpn_client.yml
    become: true
    roles:
        - openvpn
    tasks:
        - name: Configure OpenVPN servers
        import_tasks: ../../ansible-roles/openvpn/tasks/openvpn_server.yml

    - hosts: localhost
    vars_files:
        - ../vars/openvpn_client.yml
    roles:
    - openvpn
    become: true
    tasks:
        - name: Create OpenVPN connection files for client
        import_tasks: ../../ansible-roles/openvpn/tasks/create_client_files.yml

License
-------

BSD

Author Information
------------------

Nikolay Zadneprovskiy
zadneprovskiywork@gmail.com