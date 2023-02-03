const yearLength: { [name: string]: number } = {
  mercury: 0.2408467,
  venus: 0.61519726,
  earth: 1.0,
  mars: 1.8808158,
  jupiter: 11.862615,
  saturn: 29.447498,
  uranus: 84.016846,
  neptune: 164.79132,
};

const earthYear = 31557600;

export function age(planet: string, seconds: number): number {
  const res = seconds / (earthYear * yearLength[planet]);
  return parseFloat(res.toFixed(2));
}
