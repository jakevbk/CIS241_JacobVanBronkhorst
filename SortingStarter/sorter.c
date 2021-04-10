#include "sorter.h"

void sort(char** contents, int size){
	//ask for memory for a dynamic array
	char** StrArray = malloc(sizeof(char*) * size);
	
	//index for the array
	int i = 0;

	//create a pointer to tokenize(create substrings of contents)
	char* piece = strtok(*contents, "\n");

	while(piece != NULL){
		StrArray[i] = piece;
		++i;
		piece = strtok(NULL, "\n");
	}

	//a pointer for comparing within the sort & an int for indexing
	char* compare;
	int j = 0;

	//compare strings and sort from a to z 
	
	for(int step = 1; step<size; ++step){
		compare = StrArray[step];
		j = step - 1;
		while(j >= 0 && (strcasecmp(compare,StrArray[j]) <0)){
			StrArray[j+1] = StrArray[j];
			--j;
		}
		StrArray[j+1] = compare;
	}


	
	//intialize and declare a staic array of chars
	char BigStr[size * 10];
	for(int w=0; w<size; ++w){
		strcat(BigStr,StrArray[w]);
		strcat(BigStr,"\n");
	}

	//contents now points to the chars in BigStr
	*contents = BigStr;

	//give back the memory we allocated
	free(StrArray);	

}
