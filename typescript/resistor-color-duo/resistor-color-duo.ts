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

export function decodedValue([c1, c2]: string[]): number {
  return 10 * colors[c1] + colors[c2];
}
