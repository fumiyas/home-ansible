ANSIBLE_PLAYBOOK_CMD=	ansible-playbook
ANSIBLE_INVENTORY=	production/inventory.ini
ANSIBLE_PLAYBOOK=	site.yml

default:

provision:
	$(ANSIBLE_PLAYBOOK_CMD) \
	  --inventory $(ANSIBLE_INVENTORY) \
	  $(ANSIBLE_PLAYBOOK) \
	;

