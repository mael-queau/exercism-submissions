function transform(input::AbstractDict)
  Dict(
    lowercase(letter) => point
    for (point, letters) in input
    for letter in letters
  )
end
