#include "game.h"

Game::Game(const Player& player1, const Player& player2):
    field_(),
    MAN_PIECE_({'w', 'b'}),
    KING_PIECE_({'W', 'B'}) {
    players_.push_back(player1);
    players_.push_back(player2);
}

bool Game::applyStep(const Step& step, size_t playerNum) {
    Field newField(field_);
    if (step.size()<2)
        return false;
    Cell pos1(step[0]), pos2(step[1]);
    if (!newField.moveMan(pos1, pos2, playerNum))
        return false;

    field_ = newField;
    return true;
}

Game::GameState Game::isWin() const {
    int countBlack = 0, countWhite = 0;
    for (int i = 0; i<8; i++)
        for (int j = 0; j<8; j++){
            char c = field_.getCell(Cell(i, j));
            if (c=='b' || c=='B')
                countBlack++;
            if (c=='w' || c=='W')
                countWhite++;
        }
    if (countBlack==0 || countWhite==0)
        return WIN;
    else
        return IN_PROGRESS;
}

void Game::play() {
    size_t counter = 1;
    while (isWin() == IN_PROGRESS) {
        counter = (counter + 1) % 2;
        bool isCorrect = false;
        while (!isCorrect) {
            Step step = players_[counter]->makeStep(field_);
            isCorrect = applyStep(step, counter);
            if (!isCorrect) {
                players_[counter]->onIncorrectStep(step);
            }
        }
    }

    for (size_t i = 0; i < players_.size(); ++i) {
        if (i == counter) {
            players_[i]->onWin();
        }
        else {
            players_[i]->onLose();
        }
    }
}