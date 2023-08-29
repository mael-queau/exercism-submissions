"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    result = Dict('G' => 0, 'A' => 0, 'T' => 0, 'C' => 0)

    for char in strand
        if haskey(result, char)
            result[char] += 1
        else
            throw(DomainError(char))
        end
    end

    return result
end
