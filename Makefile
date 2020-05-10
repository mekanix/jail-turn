SERVICE = turn
REGGAE_PATH := /usr/local/share/reggae
PORTS = 3478 3479 5349 5350

post_setup_ansible:
	@echo "turn_domain: ${FQDN}" >>ansible/group_vars/all

.include <${REGGAE_PATH}/mk/service.mk>
