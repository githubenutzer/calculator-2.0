# Set the C++ compiler
CXX = g++

# Compiler flags
CXXFLAGS = -Wall -Wextra -g

# Name of the static library and the executable
LIBRARY = libcalculator.a
EXECUTABLE = calculator_exec

# List of object files
OBJS = calculator.o main.o

# Default rule to build the library and the executable
all: $(LIBRARY) $(EXECUTABLE)

# Rule to create the static library from object files
$(LIBRARY): calculator.o
	ar rcs $@ $^

# Rule to create the executable from object files
$(EXECUTABLE): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJS)

# Rule to compile .cpp files to .o files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean rule to remove object files and executables
clean:
	rm -f $(OBJS) $(LIBRARY) $(EXECUTABLE)
