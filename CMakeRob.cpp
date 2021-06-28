// CMakeRob.cpp: определяет точку входа для приложения.
//

#include "CMakeRob.h"

using namespace std;
using namespace Planes;

int main(int argc, char *argv[])
{
    if (argc < 3){
        std::cout << "error NO DATA FILES"<< endl;
        return 0;
    }
    bool delta_fl;

    std::string FileName = argv[2];
    std::string goodPoints;
    std::string wrongPoints;
    std::vector<Point> pointList;
    std::vector<plane> planeList;

    double x, y, z;
    double delta;


    std::ifstream planeFile(argv[1]); // окрываем файлы данных для чтения
    std::ifstream pointFile(argv[2]);

    goodPoints = FileName + "_good.txt";
    wrongPoints = FileName + "_wrong.txt";

    std::ofstream goodPointsFile(goodPoints); //открываем файлы вывода результатов
    std::ofstream wrongPointsFile(wrongPoints);

    // заполняем массив точек плоскостей

    if (planeFile.is_open())
    {
        while (planeFile >> x >> y >> z)
        {
            pointList.push_back(Point(x, y, z)); 
        }
    }
    planeFile.close();

    // заполняем массив плоскостей

    for (int i = 0; i < pointList.size(); i+=3)
    {
        planeList.push_back(plane(pointList[i], pointList[i + 1], pointList[i + 2]));
    }

    if (pointFile.is_open())
    {
        while (pointFile >> x >> y >> z)
        {
            Point curPoint = Point(x, y, z); // берем точку из файла точек
            delta_fl = true;

            for (int i = 0; i < planeList.size(); i++) // перебираем плоскости в массиве плоскостей
            {
                delta = planeList[i].determinant(curPoint); // проверяем ее положение относительно плоскости
                if (delta <= 0.0){
                    delta_fl = delta_fl && false; //перед или на плоскости
                }
                else{
                    delta_fl = delta_fl && true; // за плоскостью
                }
            }
            if(goodPointsFile.is_open()&&wrongPointsFile.is_open()){
                if(delta_fl){
                    goodPointsFile << curPoint.x << " " << curPoint.y << " " << curPoint.z << endl;
                } else {
                    wrongPointsFile << curPoint.x << " " << curPoint.y << " " << curPoint.z << endl;
                }
            }

        }
    }
    pointFile.close();
    goodPointsFile.close();
    wrongPointsFile.close();

	cout << "Work is done." << endl;
	return 0;
}
