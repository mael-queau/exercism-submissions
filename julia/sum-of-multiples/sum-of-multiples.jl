function sum_of_multiples(limit, factors)
  return sum(unique(filter(n -> any(f != 0 && n % f == 0 for f in factors), 1:limit-1)))
end
