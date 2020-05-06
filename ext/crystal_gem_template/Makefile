CRYSTAL = crystal
TARGET = ../../lib/my_gem.bundle

$(TARGET): ./src/my_gem.cr
	$(CRYSTAL) $< --link-flags "-dynamic -bundle -Wl,-undefined,dynamic_lookup" -o $(TARGET)
