#include <iostream>
#include <memory>
#include "game/game.h"
#include "strategies/human.h"
#include "strategies/computer1.h"

int main() {
    auto player1 = std::make_shared<Human>("Player1");
    auto player2 = std::make_shared<Computer1>("Player2");

    Game game(player1, player2);
    game.play();
}
