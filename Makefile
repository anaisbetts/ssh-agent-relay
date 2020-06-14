prefix ?= /usr

.PHONY: install

install:
	mkdir -p $(DESTDIR)$(prefix)/bin
	mkdir -p $(DESTDIR)$(prefix)/lib/ssh-agent-relay
	install ./bin/ssh-agent-relay $(DESTDIR)$(prefix)/bin/ssh-agent-relay
	install ./lib/ssh-agent-relay/npiperelay.exe $(DESTDIR)$(prefix)/lib/ssh-agent-relay
