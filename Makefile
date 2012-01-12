#
# Ole Troan, ot@cisco.com
# April 2009

REVISION=03
DRAFT=draft-ietf-v6ops-ipv6-multihoming-without-ipv6nat.txt \

XML2RFC=./xml2rfc/xml2rfc.tcl

# General rule to "compile" an XML file
%.txt:  %.xml
	$(XML2RFC) $< $*-$(REVISION).txt

draft: $(DRAFT)

.PHONY: clean draft commit
clean:
	/bin/rm -f *.txt

all:	draft



