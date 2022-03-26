targets=$(YED_LIB_DIR) $(YED_LIB_DIR)/vimish.so

all: $(targets)

.PHONY: clean

$(YED_LIB_DIR):
	mkdir $@

$(YED_LIB_DIR)/vimish.so: vimish.c
	$(CC) -o $@ $< $(shell yed --print-cflags) $(shell yed --print-ldflags)

clean:
	rm $(YED_LIB_DIR)/vimish.so
