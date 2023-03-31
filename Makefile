#/usr/bin/sh
# Build Ayaspell dictionary files
DATA :=dict
BUILD :=build
SRCDICTS := \
	$(DATA)/stopwords.dic \
	$(DATA)/tools.dic \
	$(DATA)/names.dic \
	$(DATA)/proper-nouns.dic \
	$(DATA)/verb.huns.dic
SRCAFF :=$(DATA)/ar.aff
OUTDICT :=$(BUILD)/ar.dic
OUTAFF :=$(BUILD)/ar.aff

default: build alias
build:
	mkdir $(BUILD)
	cp $(SRCAFF) $(BUILD)
	cat $(SRCDICTS) > $(OUTDICT)

	line_count=$$(wc -l < "$(OUTDICT)"); \
		sed -i "1s/^/$$line_count\n/" build/ar.dic

alias: build
	makealias $(OUTDICT) $(OUTAFF)
	mv ar_alias.dic ar_alias.aff $(BUILD)
	rm $(OUTDICT) $(OUTAFF)
clean:
	rm -rf $(BUILD)
