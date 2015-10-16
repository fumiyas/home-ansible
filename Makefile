ANSIBLE_PLAYBOOK_CMD=	ansible-playbook
ANSIBLE_INVENTORY=	ansible.hosts
ANSIBLE_PLAYBOOK=	ansible.yml

default:

provision:
	$(ANSIBLE_PLAYBOOK_CMD) \
	  --inventory $(ANSIBLE_INVENTORY) \
	  $(ANSIBLE_PLAYBOOK) \
	;

