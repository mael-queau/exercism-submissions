#include "difference_of_squares.h"
#include <math.h>

unsigned int sum_of_squares(unsigned int number){
  unsigned int res = 0;
  for (unsigned int i = 1; i <= number; ++i) {
    res += pow(i, 2);
  }
  return res;
}

unsigned int square_of_sum(unsigned int number){
  unsigned int res = 0;
  for (unsigned int i = 1; i <= number; ++i) {
    res += i;
  }
  return pow(res, 2);
}

unsigned int difference_of_squares(unsigned int number) {
  return sum_of_squares(number) < square_of_sum(number)
    ? square_of_sum(number) - sum_of_squares(number)
    : sum_of_squares(number) - square_of_sum(number);
}
