function largest_product(str, span)
  if span > length(str) || span < 0 || (length(str) == 0 && span > 0)
    throw(ArgumentError("Invalid window argument"))
  end
  lst = [parse(Int, c) for c in str]
  maximum(prod(lst[i.+(1:span)]) for i in 0:(length(str)-span))
end
