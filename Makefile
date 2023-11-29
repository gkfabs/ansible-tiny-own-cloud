install:
	ansible-galaxy install -r requirements.yml

check:
	ansible-playbook site.yml --syntax-check -i hosts.yml

run:
	ansible-playbook site.yml -i hosts.yml
