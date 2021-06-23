#pragma once
#include "Point.h"

namespace Planes {
	class plane {
	public:

			plane(Point p1, Point p2, Point p3) {
				this->p1 = p1;
				this->p2 = p2;
				this->p3 = p3;
				this->xm = (p2.y - p1.y) * (p3.z - p1.z) - (p2.z - p1.z) * (p3.y - p1.y);
				this->ym = (p2.x - p1.x) * (p3.z - p1.z) - (p2.z - p1.z) * (p3.x - p1.x);
				this->zm = (p2.x - p1.x) * (p3.y - p1.y) - (p2.y - p1.y) * (p3.x - p1.x);
			}

			float determinant(Point);
	private:

			Point p1;
			Point p2;
			Point p3;
			float xm;
			float ym;
			float zm;

	};

}
