public function isIsogram(string sentence) returns boolean {
    map<boolean> letters = {};
    foreach var letter in sentence.toLowerAscii() {
        if letter == " " || letter == "-" {
            continue;
        }
        if letters.hasKey(letter) {
            return false;
        }
        letters[letter] = true;
    }
    return true;
}
