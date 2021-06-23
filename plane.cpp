#include "Plane.h"

using namespace Planes;

float plane::determinant(Point p)
{
	float delta;
	delta = (p.x - this->p1.x) * this->xm - (p.y - this->p1.y) * this->ym + (p.z - this->p1.z) * this->zm;
	return delta;

}