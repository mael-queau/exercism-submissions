function saddlepoints(M)
  if length(unique(map(length, M))) > 1
    throw(ArgumentError("input matrix must be rectangular"))
  elseif any(!isa(x, Int) for x in M)
    throw(ArgumentError("input matrix must contain only integers"))
  end

  res = []

  for i in 1:size(M, 1)
    for j in 1:size(M, 2)
      val = M[i, j]

      row = map(x -> x[i], eachcol(M))
      col = map(y -> y[j], eachrow(M))

      if minimum(col) == val && maximum(row) == val
        push!(res, (i, j))
      end
    end
  end

  return res
end

saddlepoints([9 8 7; 5 3 2; 6 6 7])
