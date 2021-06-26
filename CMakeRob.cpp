// CMakeRob.cpp: определяет точку входа для приложения.
//

#include "CMakeRob.h"

using namespace std;
using namespace Planes;

int main(int argc, char *argv[])
{
    std::vector<Point> pointList;
    std::vector<plane> planeList;

    float x, y, z;
    float delta;
    //plane plane1, plane2;
    //Point curPoint;

    std::ifstream planeFile(argv[0]); // окрываем файл для чтения
    std::ifstream pointFile(argv[1]);

    if (planeFile.is_open())
    {
        while (planeFile >> x >> y >> z)
        {
            pointList.push_back(Point(x, y, z));
        }
    }
    planeFile.close();

    for (int i = 0; i <= pointList.size(); i + 3)
    {
        planeList.push_back(plane(pointList[i], pointList[i + 1], pointList[i + 2]));
    }

    if (pointFile.is_open())
    {
        while (pointFile >> x >> y >> z)
        {
            Point curPoint = Point(x, y, z);
            for (int i = 0; i <= planeList.size(); i++) 
            {
                delta = planeList[i].determinant(curPoint);
            }

        }
    }
	//cout << "Hello CMake." << endl;
	return 0;
}
