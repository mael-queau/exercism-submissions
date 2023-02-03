#include "armstrong_numbers.h"
#include "stdbool.h"
#include "math.h"
#include "stdio.h"

bool is_armstrong_number(int candidate) {
  int sum = 0;
  int num = candidate;
  int digits = 0;
  while (num > 0) {
    num /= 10;
    digits++;
  }
  num = candidate;
  while (num > 0) {
    sum += pow(num % 10, digits);
    num /= 10;
  }
  return sum == candidate;
}