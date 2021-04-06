#include <catch.hpp>

#include "random-stuff.hpp"

TEST_CASE( "Factorials are computed", "[factorial]" ) {
    CHECK( Factorial(0) == 1 );
    CHECK( Factorial(1) == 1 );
    CHECK( Factorial(3) == 6 );
    CHECK( Factorial(10) == 3628800 );
}
