#!/bin/bash

ID=$1
LANG=$2
TASK=$3

function java {
	FILE="$TASK.class"
	echo "/*" >> $FILE
	echo "ID: $ID" >> $FILE
	echo "LANG: JAVA" >> $FILE
	echo "TASK: $TASK" >> $FILE
	echo "*/" >> $FILE
	echo "import java.io.*;" >> $FILE
	echo "import java.util.*;" >> $FILE
	echo "" >> $FILE
	echo "class $TASK {" >> $FILE
	echo "	public static void main (String [] args) throws IOException {" >> $FILE
	echo "		" >> $FILE
	echo "		BufferedReader f = new BufferedReader(new FileReader(\"$TASK.in\"));" >> $FILE
	echo "		PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter(\"test.out\")));" >> $FILE
	echo "		StringTokenizer st = new StringTokenizer(f.readLine());" >> $FILE
	echo "		" >> $FILE
	echo "		//Enter Your Code Here" >> $FILE
	echo "		" >> $FILE
	echo "		out.write();" >> $FILE
	echo "		out.close();" >> $FILE
	echo "		" >> $FILE
	echo "	}" >> $FILE
	echo "" >> $FILE
	echo "}" >> $FILE
}

function c {
	FILE="$TASK.c"
	echo "/*" >> $FILE
	echo "ID: $ID" >> $FILE
	echo "LANG: C" >> $FILE
	echo "TASK: $TASK" >> $FILE
	echo "*/" >> $FILE
	echo "\#include <stdio.h>" >> $FILE
	echo "main () {" >> $FILE
	echo "	FILE *fin = fopen (\"$TASK.in\", \"r\");" >> $FILE
	echo "	FILE *fout = fopen (\"$TASK.out\", \"w\");" >> $FILE
	echo "	/*fprintf (fout, out);*/" >> $FILE
	echo "	exit (0);" >> $FILE
	echo "}" >> $FILE
}

function c++ {
	FILE="$TASK.cpp"
	echo "/*" >> $FILE
	echo "ID: $ID" >> $FILE
	echo "TASK: $TASK" >> $FILE
	echo "LANG: C++" >> $FILE
	echo "*/" >> $FILE
	echo "\#include <iostream>" >> $FILE
	echo "\#include <fstream>" >> $FILE
	echo "\#include <string>" >> $FILE
	echo "" >> $FILE
	echo "using namespace std;" >> $FILE
	echo "" >> $FILE
	echo "int main() {" >> $FILE
	echo "	ofstream fout (\"$TASK.out\");" >> $FILE
	echo "	ifstream fin (\"$TASK.in\");" >> $FILE
	echo "	/* fout << solution << endl;" >> $FILE
	echo "	return 0;" >> $FILE
	echo "}" >> $FILE
}


if [ $LANG=java ]
then 
java
fi
if [ $LANG=c ]
then 
c
fi
if [ $LANG=c++ ]
then
c++
fi

exit

