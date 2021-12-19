role-minio
=========

Ce Role Ansible installe et configure un serveur MinIO.

Requirements
------------

N/A

Role Variables
--------------

role_minio_minio_user: "minio-user"
role_minio_data_folder_path: "/data"
role_minio_api_port: 9000
role_minio_console_port: 9001
role_minio_admin_user: "minio"
role_minio_minio_url: ""
role_minio_password_admin_user: ""
role_mino_local_cert_path: ""
role_mino_local_key_path: ""
role_mino_local_CA_path: ""
role_minio_use_ssl: no

Dependencies
------------

N/A

Example Playbook
----------------
```
---
- hosts: minio
  become: yes
  tasks:
    - name: "Installation Configuration de MiNIO"
      include_role:
        name: role-minio
      vars:
        role_minio_minio_url: "https://mymio.local"
        role_minio_password_admin_user: "Azertyiop123*"
        role_mino_local_cert_path: "/path/to/cert.crt"
        role_mino_local_key_path: "/path/to/cert.key"
        role_mino_local_CA_path: "/path/to/ca.crt"
```