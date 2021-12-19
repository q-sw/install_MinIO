# install_MinIO
projet pour installer un server MiNIO en mode standalone ou distribué

# Reste à faire
- [ ] Terroform pour construire l'infras
- [ ] Mode distribué pour MinIO

# Utilisation du projet

- Mettre a jour le fichier [inventory.yaml](inventory.yaml) avec les informations de connexion au serveur.  
- Mettre à jour la section **vars** du fichier [playbook.yaml](playbook.yaml) pour personnaliser l'installation. Ci dessous l'ensemble des variables utilisables.  
  
| Nom de la variable | Valeur par défaut | Descriptio |
|--------------------|------------------ |------------|
|role_minio_use_ssl| `no` | Action du SSL pour le serveur|
|role_minio_minio_url|`"http://myminio.test.local"`| Url d'accès à l'api Minio et a l'IHM|
|role_minio_admin_user| `"minio"`|Utilisateur administrateur pour accès à l'API ou à l'IHM. Peut etre généré aléatoirement par le script [generate_password.sh](generate_password.sh)|
|role_minio_password_admin_user|`"Azertyiop123*"`|Mot de passe pour l'utilisateur administrateur. Peut etre généré aléatoirement par le script [generate_password.sh]|
|role_mino_local_cert_path|`""`|Si la variable `role_minio_use_ssl` est à `true`.|
|role_mino_local_key_path|`""`|Si la variable `role_minio_use_ssl` est à `true`.|
|role_mino_local_CA_path|`""`|Si la variable `role_minio_use_ssl` est à `true`.|
|role_minio_minio_user| `"minio-user"`|Utilisateur systeme local pour executer le service MinIO|
|role_minio_data_folder_path| `"/data"`|Point de montage utilisé pour stocker les données de MinIO|
|role_minio_api_port|`9000`|Port pour de l'API MinIO|
|role_minio_console_port| `9001`|Port pour l'accès à l'IHM MinIO|

- Jouer la commande `ansible-playbook -i inventory.yaml playbook.yaml`