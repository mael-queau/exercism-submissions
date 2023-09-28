#include "reverse_string.h"

namespace reverse_string
{
  std::string reverse_string(std::string str)
  {
    std::string reversed_str;
    for (int i = str.length() - 1; i >= 0; i--)
    {
      reversed_str += str[i];
    }
    return reversed_str;
  }
}
