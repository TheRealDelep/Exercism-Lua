local Hamming = {}

function Hamming.compute(a,b)
    local len = #a
    if not (string.len(b) == len) then return -1 end

    local result = 0
    for i = 0, len, 1 do
        if not (a:byte(i) == b:byte(i)) then result = result + 1 end
    end
    return result
end

return Hamming