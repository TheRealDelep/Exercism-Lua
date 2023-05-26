local function search(array, target, lowerbound, upperbound)
    local index = lowerbound + math.floor((upperbound - lowerbound) / 2)
    local val = array[index]

    if val == target then
        return index
    elseif upperbound == lowerbound then
        return -1
    elseif val < target then
        return search(array, target, index +1, upperbound)
    else
        return search(array, target, lowerbound, index -1)
    end
end

return function(array, target)
    local upperbound = #array
    if upperbound == 0 then return -1 end
    return search(array, target, 1, upperbound)
end
