user = {{ dovecot_db_user }}
password = {{ dovecot_db_password }}
hosts = 127.0.0.1
dbname = {{ dovecot_db }}
query = select concat(destination_username, '@', destination_domain) as destinations from aliases where source_username = '%u' and source_domain = '%d' and enabled = true;
