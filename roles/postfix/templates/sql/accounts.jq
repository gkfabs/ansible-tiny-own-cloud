user = {{ dovecot_db_user }}
password = {{ dovecot_db_password }}
hosts = 127.0.0.1
dbname = {{ dovecot_db }}
query = select 1 as found from accounts where username = '%u' and domain = '%d' and enabled = true LIMIT 1;
