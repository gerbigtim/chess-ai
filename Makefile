CC = g++
FLAGS = -std=c++11 -g -Wall -Werror -Wextra
INCL = -Isrc -Itest

random-stuff.o: src/random-stuff.cpp src/random-stuff.hpp
	@echo "Compiling $@..."
	$(CC) $(FLAGS) -c $^

# Tests
TEST_PROG = run-tests
tests: test/test-main.cpp test/random-test.cpp random-stuff.o
	@echo "\nCompiling the tests..."
	$(CC) $(FLAGS) $(INCL) -o $(TEST_PROG) $^

run-tests: tests
	@echo "\nRunning the tests..."
	./$(TEST_PROG) --reporter compact --success

# Clean
clean:
	rm -rvf $(TEST_PROG) *.o *.out src/*.gch test/*.gch
