# Returns the age on another planet or error if it is not a planet.
#
# + planet - planet name as a string
# + seconds - person's age measured in seconds
# + return - person's age in years of that planet, or error if unknown planet.
function age(string planet, int seconds) returns float|error {
    float|error ratio = ratio_to_earth(planet);
    if (ratio is error) {
        return ratio;
    }
    float seconds_float = <float>seconds;
    float seconds_in_year_earth = 31557600.0;
    return float:round(seconds_float / seconds_in_year_earth / ratio, 2);
}

function ratio_to_earth(string planet) returns float|error {
    match planet {
        "Mercury" => {
            return 0.2408467;
        }
        "Venus" => {
            return 0.61519726;
        }
        "Earth" => {
            return 1.0;
        }
        "Mars" => {
            return 1.8808158;
        }
        "Jupiter" => {
            return 11.862615;
        }
        "Saturn" => {
            return 29.447498;
        }
        "Uranus" => {
            return 84.016846;
        }
        "Neptune" => {
            return 164.79132;
        }
        _ => {
            return error("not a planet");
        }
    }
}
