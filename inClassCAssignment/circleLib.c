#include "circleLib.h"

const double PI = 3.14159;

double calcPerim(double radius){
	return 2*radius*PI;
}
double calcArea(double radius){
	return PI*(radius * radius);
}

