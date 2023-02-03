export function hey(msg: string): string {
  // Strip whitespaces
  msg = msg.replaceAll(/\s/g, "");

  if (msg.length === 0) return "Fine. Be that way!";

  const question = msg.endsWith("?");

  // Strip non-letter characters
  msg = msg.replaceAll(/[\W\d]/g, "");

  const allCaps = /^[A-Z]+$/.test(msg);

  if (question && allCaps) return "Calm down, I know what I'm doing!";
  if (question) return "Sure.";
  if (allCaps) return "Whoa, chill out!";
  return "Whatever.";
}
