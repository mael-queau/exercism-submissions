struct ROT
  i::Int
end

function Base.literal_pow(::typeof(ROT), str::AbstractString)
  i = parse(Int, match(r"ROT(\d+)", str).captures[1])
  ROT(i)
end

function rotate(r::ROT, str::AbstractString)
  map(c -> rotate(r, c), str)
end

function rotate(r::ROT, c::Char)
  if c in 'a':'z'
    'a' + (c - 'a' + r.i) % 26
  elseif c in 'A':'Z'
    'A' + (c - 'A' + r.i) % 26
  else
    c
  end
end

function rotate(n::Int, str::AbstractString)
  map(c -> rotate(n, c), str)
end

function rotate(n::Int, c::Char)
  if c in 'a':'z'
    'a' + (c - 'a' + n) % 26
  elseif c in 'A':'Z'
    'A' + (c - 'A' + n) % 26
  else
    c
  end
end
