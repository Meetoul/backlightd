PROGRAM := backlightd

all: $(PROGRAM)

install: $(PROGRAM)
	cp -f $(PROGRAM) /bin
	mkdir -p /etc/sv/$(PROGRAM)
	cp -f run /etc/sv/$(PROGRAM)
	mkdir -p  /etc/sv/$(PROGRAM)/log
	cp -f log/run /etc/sv/$(PROGRAM)/log
	cp -f conf /etc/sv/$(PROGRAM) # this and below are temprorary instalation steps
	ln -sf /etc/sv/$(PROGRAM) /var/service/

uninstall:
	rm -f /bin/$(PROGRAM)
	rm -rf /etc/sv/$(PROGRAM)
	rm -rf /var/service/$(PROGRAM) # this is temporary step
