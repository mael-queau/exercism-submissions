#include <regex>
#include "bob.h"

namespace bob
{
  string hey(const string &s)
  {
    bitset<3> flags;
    flags[0] = regex_match(s, regex(".*\\?\\s*$"));
    flags[1] = regex_match(s, regex(".*[A-Z]+.*")) && !regex_match(s, regex(".*[a-z]+.*"));
    flags[2] = regex_match(s, regex("^\\s*$"));

    switch (flags.to_ulong())
    {
    case 0b001:
      return "Sure.";
    case 0b010:
      return "Whoa, chill out!";
    case 0b011:
      return "Calm down, I know what I'm doing!";
    case 0b100:
      return "Fine. Be that way!";
    default:
      return "Whatever.";
      break;
    }
  }
}
