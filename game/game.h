#ifndef GAME_GAME_H
#define GAME_GAME_H

#include <memory>
#include "field.h"
#include "step.h"
#include "../strategies/interface.h"

class Game {
public:
    using Player = std::shared_ptr<StrategyInterface>;
    Game(const Player& player1, const Player& player2);

    void play();

private:
    enum GameState{
        WIN,
        IN_PROGRESS
    };

    GameState isWin() const;
    bool applyStep(const Step& step, size_t playerNum);

    Field field_;
    std::vector<Player> players_;

    const std::vector<char> MAN_PIECE_;
    const std::vector<char> KING_PIECE_;
};


#endif //GAME_GAME_H
