# Convert an integer to a Roman number.
#
# + num - the integer to convert
# + return - the Roman number as a string
function roman(int num) returns string {
    string[13] M = ["", "M", "MM", "MMM"];
    string[10] C = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"];
    string[10] X = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"];
    string[10] I = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"];

    string thousands = M[num / 1000];
    string hundreds = C[(num % 1000) / 100];
    string tens = X[(num % 100) / 10];
    string ones = I[num % 10];
    string ans = thousands + hundreds + tens + ones;

    return ans;
}
