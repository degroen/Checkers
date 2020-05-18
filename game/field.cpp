#include <stdexcept>
#include "field.h"

Field::Field(){
    for (int i = 0; i<8; i++)
        for(int j = 0; j<8; j++)
            fld_[i][j] = '_';

    for (int i = 0; i<8; i++)
        for (int j = 0; j<3; j++)
            if ((i+j)%2==0)
                fld_[i][j] = 'w';

    for (int i = 0; i<8; i++)
        for (int j = 5; j<8; j++)
            if ((i+j)%2==0)
                fld_[i][j] = 'b';
}

std::ostream& operator<<(std::ostream& out, const Field& f){
    for (int j = 7; j>=0; j--){
        out << j+1;
        for (int i = 0; i<8; i++)
            out << " " << f.fld_[i][j];
        out << "\n";
    }
    out << "  A B C D E F G H\n";
    return out;
}

char Field::getCell(const Cell& c) const{
    if (c.isCorrect())
        return fld_[c.x_][c.y_];
    throw std::out_of_range("Out of range in field");
}

bool Field::moveMan(const Cell &piece, const Cell &newCell, int playerNum) {
    if (playerNum==0 && getCell(piece)=='w' && getCell(newCell)=='_'){
        int dx = newCell.x_ - piece.x_, dy = newCell.y_ - piece.y_;
        if (dy == 1 && std::abs(dx)==1) {
            fld_[newCell.x_][newCell.y_] = 'w';
            if (newCell.y_==7)
                fld_[newCell.x_][newCell.y_] = 'W';
            fld_[piece.x_][piece.y_] = '_';
            return true;
        }

        if (dy == 2 && std::abs(dx)==2) {
            Cell enemyPiece(piece.x_+dx/2, piece.y_+dy/2);
            if (getCell(enemyPiece)=='b' || getCell(enemyPiece)=='B'){
                fld_[enemyPiece.x_][enemyPiece.y_] = '_';
                fld_[newCell.x_][newCell.y_] = 'w';
                if (newCell.y_==7)
                    fld_[newCell.x_][newCell.y_] = 'W';
                fld_[piece.x_][piece.y_] = '_';
                return true;
            }
        }
    }

    if (playerNum==1 && getCell(piece)=='b' && getCell(newCell)=='_'){
        int dx = newCell.x_ - piece.x_, dy = newCell.y_ - piece.y_;
        if (dy == -1 && std::abs(dx)==1) {
            fld_[newCell.x_][newCell.y_] = 'b';
            if (newCell.y_==0)
                fld_[newCell.x_][newCell.y_] = 'B';
            fld_[piece.x_][piece.y_] = '_';
            return true;
        }

        if (dy == -2 && std::abs(dx)==2) {
            Cell enemyPiece(piece.x_+dx/2, piece.y_+dy/2);
            if (getCell(enemyPiece)=='w' || getCell(enemyPiece)=='W'){
                fld_[enemyPiece.x_][enemyPiece.y_] = '_';
                fld_[newCell.x_][newCell.y_] = 'b';
                if (newCell.y_==0)
                    fld_[newCell.x_][newCell.y_] = 'B';
                fld_[piece.x_][piece.y_] = '_';
                return true;
            }
        }
    }

    return false;
}