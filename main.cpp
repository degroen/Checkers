#include <iostream>
#include <memory>
#include "game/game.h"
#include "strategies/human.h"
#include "strategies/computer1.h"

int main() {
    auto player1 = std::make_shared<Computer1>("Player1");
    auto player2 = std::make_shared<Computer1>("Player2");

    for (int i = 0; i<100; i++) {
        Game game(player1, player2);
        game.play();
    }

    player1->printStat();
    //player2->printStat();
}
