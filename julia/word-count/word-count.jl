function wordcount(sentence)
  sentence = lowercase(sentence)

  words = eachmatch(r"[a-zA-Z0-9']*[a-zA-Z0-9][a-zA-Z0-9']*", sentence)
  words = map(x -> x.match, words)
  words = map(x -> strip(x, ['\'']), words)

  wordcount = Dict{String,Int}()
  for word in words
    if haskey(wordcount, word)
      wordcount[word] += 1
    else
      wordcount[word] = 1
    end
  end
  return wordcount
end
