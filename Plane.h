#pragma once
#include "Point.h"

namespace Planes {

class plane {
public:
		plane(Point P1, Point P2, Point P3)
		{
			p1 = P1;
			p2 = P2;
			p3 = P3;
			xm = (p2.y - p1.y) * (p3.z - p1.z) - (p2.z - p1.z) * (p3.y - p1.y);
			ym = (p2.x - p1.x) * (p3.z - p1.z) - (p2.z - p1.z) * (p3.x - p1.x);
			zm = (p2.x - p1.x) * (p3.y - p1.y) - (p2.y - p1.y) * (p3.x - p1.x);
		}
		double determinant(Point);
private:

		Point p1;
		Point p2;
		Point p3;
		double xm;
		double ym;
		double zm;

};

}
