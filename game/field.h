#ifndef GAME_FIELD_H
#define GAME_FIELD_H

#include <iostream>
#include "cell.h"

class Field{
public:
    Field();
    friend std::ostream& operator<<(std::ostream& out, const Field& f);
    char getCell(const Cell& cell) const;
    bool moveMan(const Cell& piece1, const Cell& newCell, int playerNum);
    bool moveKing(const Cell& piece1, const Cell& newCell, int playerNum);

private:
    char fld_[8][8];
};

#endif //GAME_FIELD_H