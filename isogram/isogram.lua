return function(s)
    local set = {}

    for c in s:lower():gmatch('%w') do
        if set[c] then
            return false
        else
            set[c] = true
        end
    end

    return true
end