#ifndef GAME_INTERFACE_H
#define GAME_INTERFACE_H

#include "../game/step.h"
#include "../game/field.h"

class StrategyInterface {
public:
    virtual Step makeStep(const Field& field) = 0;
    virtual void onIncorrectStep(const Step& step) const = 0;

    virtual void onLose() = 0;
    virtual void onWin() = 0;
    //virtual void on_tie() = 0;
};


#endif //GAME_INTERFACE_H
