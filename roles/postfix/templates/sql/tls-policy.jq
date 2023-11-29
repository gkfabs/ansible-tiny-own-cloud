user = {{ dovecot_db_user }}
password = {{ dovecot_db_password }}
hosts = 127.0.0.1
dbname = {{ dovecot_db }}
query = SELECT policy, params FROM tlspolicies WHERE domain = '%s'