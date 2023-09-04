function transform(input::AbstractDict)
  output = Dict{Char,Int}()

  for (i, c) in input
    for letter in c
      output[lowercase(letter)] = i
    end
  end

  return output
end
