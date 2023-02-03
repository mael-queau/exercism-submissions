export function isPangram(s: string): boolean {
  const regex = /[a-z]/gi;

  let letters = Array.from(s.matchAll(regex)).map((v) => v[0].toLowerCase());

  let uniqueLetters = letters.reduce((acc, v) => {
    if (acc.indexOf(v) === -1) acc.push(v);
    return acc;
  }, [] as string[]);

  return uniqueLetters.length === 26;
}
