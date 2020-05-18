project(game)

set(SOURCES
        field.cpp)
set(HEADERS
        field.h step.cpp step.h cell.cpp cell.h functions.h functions.cpp)

include_directories(../)

add_library(game ${SOURCES} ${HEADERS})
