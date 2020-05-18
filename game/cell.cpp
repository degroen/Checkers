#include <stdexcept>
#include "cell.h"

Cell::Cell(int x, int y):
    x_(x),
    y_(y) {}

bool Cell::isCorrect() const{
    if (x_>=0 && x_<8 && y_>=0 && y_<8)
        return true;
    return false;
}