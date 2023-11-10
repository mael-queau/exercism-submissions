#include "high_scores.h"

#include <algorithm>

namespace arcade
{

    std::vector<int> HighScores::list_scores()
    {
        return scores;
    }

    int HighScores::latest_score()
    {
        return scores.back();
    }

    int HighScores::personal_best()
    {
        return *std::max_element(scores.begin(), scores.end());
    }

    std::vector<int> HighScores::top_three()
    {
        return std::vector<int>(scores.rbegin(), scores.rbegin() + 3);
    }

} // namespace arcade
