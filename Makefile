all: sum_test

sum_test: sum.o main.o
\t g++ -o sum_test sum.o main.o

sum.o: sum.cpp sum.h
\t g++ -c -o sum.o sum.cpp

main.o: main.cpp sum.h
\t g++ -c -o main.o main.cpp

clean:
\t rm -f sum_test *.0
