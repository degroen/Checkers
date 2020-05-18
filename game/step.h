#ifndef GAME_STEP_H
#define GAME_STEP_H

#include <vector>
#include <string>
#include "cell.h"

class Step {
public:
    Step(const Cell& firstPos, const Cell& secondPos);
    Step(const std::string& move);
    //Step(std::vector<Cell> steps);

    const Cell& operator[](size_t id) const;

    size_t size() const;

private:
    std::vector<Cell> steps_;
};


#endif //GAME_STEP_H
