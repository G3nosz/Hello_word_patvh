BIN:=p_example_prog

.PHONY: all clean

all: $(BIN)

$(BIN): patch_example.o
	$(CC) -o $@ $^

clean:
	rm -f $(BIN) *.o
