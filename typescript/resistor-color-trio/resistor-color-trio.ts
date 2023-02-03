const colors: { [c: string]: number } = {
  black: 0,
  brown: 1,
  red: 2,
  orange: 3,
  yellow: 4,
  green: 5,
  blue: 6,
  violet: 7,
  grey: 8,
  white: 9,
};

export function decodedResistorValue([c1, c2, c3]: string[]) {
  const val = (10 * colors[c1] + colors[c2]) * Math.pow(10, colors[c3]);
  return val / 1000 > 1 ? val / 1000 + " kiloohms" : val + " ohms";
}
