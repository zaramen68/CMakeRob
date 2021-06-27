#pragma once
struct Point
{
	double x;
	double y;
	double z;
	
	Point()
	{
		this->x=0.0;
		this->y=0.0;
		this->z=0.0;
	}
	
	Point(double X, double Y, double Z) : x(X), y(Y), z(Z){}
	
};
