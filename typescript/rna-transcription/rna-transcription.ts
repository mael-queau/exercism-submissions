const complement: { [key: string]: string } = {
  G: "C",
  C: "G",
  T: "A",
  A: "U",
};

export function toRna(dna: string): string {
  if (!/^[GCTA]+$/.test(dna)) throw new Error("Invalid input DNA.");
  return [...dna].map((n) => complement[n]).join("");
}
