# Ansible playbook to setup a tiny server

This is an Ansible-Playbook to setup a tiny server with a user, quota,
some dns on gandi, deluge to download torrents, sabre to synchronize
agenda and contact, a federated matrix chat server, a federated jabber
chat server, a firefox syncstorage to synchronize bookmarks, password,
etc.. and a mail.

## Requirements

- Ansible >= 2.7
- Server with Debian Bullseye operating system (the installation on Ubuntu will also work, but is not tested)
- SSH key to login to the server
- Public domain resolving to the server

```
@ 10800 IN MX 10 {{ mail_fqdn }}.
@ 10800 IN TXT "v=spf1 ip4:{{ ansible_default_ipv4.address }} ~all"
_dmarc 3600 IN TXT "v=DMARC1; p=quarantine"
_matrix._tcp 3600 IN SRV 10 5 443 {{ synapse_fqdn }}.
_xmpp-client._tcp 86400 IN SRV 5 0 5222 {{ domain }}.
_xmpp-server._tcp 86400 IN SRV 5 0 5269 {{ domain }}.
dkim_key._domainkey 10800 IN TXT "p={{ dkim_key_from_rspamd }}"
```

## Configuration

### Inventory

Set the hostname in the inventory file [hosts](hosts.yml)

### Variables

All variables are stored in the [vars](group_vars/all/vars.yml) file. Set the values according to your server.

## Run the playbook

```
make run
```
