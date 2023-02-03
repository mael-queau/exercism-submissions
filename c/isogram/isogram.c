#include "isogram.h"
#include <string.h>
#include <ctype.h>

bool is_isogram(const char phrase[]) {
  if (phrase == NULL) return false;

  for (int i = 0; i < (int)strlen(phrase); ++i) {
    for (int j = 0; j < (int)strlen(phrase); ++j) {
      if (i == j || phrase[i] == '-' || phrase[i] == ' ') continue;

      if (tolower(phrase[i]) == tolower(phrase[j])) return false;
    }
  }
  return true;
}