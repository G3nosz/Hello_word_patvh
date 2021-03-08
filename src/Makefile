BIN:=patch_git_example

.PHONY: all clean

all: $(BIN)

$(BIN): patch_example.c
	$(CC) -o $@ $^

clean:
	rm -f $(BIN)
