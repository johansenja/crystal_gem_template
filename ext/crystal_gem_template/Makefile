CRYSTAL = crystal
TARGET = ../../lib/my_gem.bundle

all: shards $(TARGET)

shards:
	crystal deps

$(TARGET): ./src/my_gem.cr
	$(CRYSTAL) $< --link-flags "-dynamic -bundle -Wl,-undefined,dynamic_lookup" -o $(TARGET)

clean:
	rm -f *.bundle
