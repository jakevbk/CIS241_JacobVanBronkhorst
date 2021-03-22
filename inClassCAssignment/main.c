#include "stdio.h"
#include "circleLib.h"
#include "newLib.h"

int main(int argc, char** argv){
	double perim = calcPerim(7.2);
	double area = calcArea(7.2);
	double recPerim = rectPerim(4,5);
	double recArea = rectArea(4,5);
	printf("Perim: %f \nArea: %f \nRect Perim: %f \nRect Area: %f \n ", perim, area, recPerim, recArea);
}
