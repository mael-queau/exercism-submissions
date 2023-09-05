# Returns the acronym of the given phrase.
#
# + phrase - a string
# + return - the acronym
function abbreviate(string phrase) returns string {
    string:RegExp delimiter = re `[-\s]+`;
    string[] words = delimiter.split(re `[^a-zA-Z-\s]`.replaceAll(phrase, ""));

    return string:'join("", ...words.map(w => w[0].toUpperAscii()));
}
