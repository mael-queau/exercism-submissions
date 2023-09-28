#include "allergies.h"
namespace allergies
{
  allergy_test::allergy_test(int score_val) { score_flag = score_val; }
  bool allergy_test::is_allergic_to(std::string allergen)
  {
    // Get bit value of allergen
    if (score_flag == 0)
      return false;
    unsigned int allergen_flag{ALLERGENS.at(allergen)};
    return score_flag & allergen_flag;
  }

  std::unordered_set<std::string> allergy_test::get_allergies()
  {
    std::unordered_set<std::string> allergy_set{};

    if (score_flag == 0)
      return allergy_set;

    for (auto const &[key, val] : ALLERGENS)
    {
      if (score_flag & val)
      {
        allergy_set.emplace(key);
      }
    }
    return allergy_set;
  }
} // namespace allergies
