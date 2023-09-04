function transform(input::AbstractDict)
  output = Dict{Char,Int}()

  for (score, letters) in input, letter in letters
    output[lowercase(letter)] = score
  end

  return output
end
