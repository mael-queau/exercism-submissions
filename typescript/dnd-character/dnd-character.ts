export class DnDCharacter {
  public strength = DnDCharacter.generateAbilityScore();
  public dexterity = DnDCharacter.generateAbilityScore();
  public constitution = DnDCharacter.generateAbilityScore();
  public intelligence = DnDCharacter.generateAbilityScore();
  public wisdom = DnDCharacter.generateAbilityScore();
  public charisma = DnDCharacter.generateAbilityScore();
  public hitpoints = DnDCharacter.getModifierFor(this.constitution) + 10;

  public static generateAbilityScore(): number {
    let n: number[] = [];
    for (let i = 0; i < 4; i++) n.push(Math.floor(Math.random() * 6 + 1));
    n.sort();
    return n.slice(-3).reduce((acc, v) => acc + v);
  }

  public static getModifierFor(abilityValue: number): number {
    return Math.floor((abilityValue - 10) / 2);
  }
}
