# Returns the acronym of the given phrase.
#
# + phrase - a string
# + return - the acronym
function abbreviate(string phrase) returns string {
    string:RegExp delimiter = re `[-\s]+`;
    string[] words = delimiter.split(re `[^a-zA-Z-\s]`.replaceAll(phrase, "")).'map(w => w[0]);

    return string:'join("", ...words).toUpperAscii();
}
