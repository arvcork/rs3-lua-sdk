local M = {}

---Count a snapshot of slot indexes sent by an InventoryUpdated event.
---@param indexes integer[]|nil
---@return integer
function M.count_indexes(indexes)
    if indexes == nil then
        return 0
    end

    local count = 0
    for _, index in ipairs(indexes) do
        if type(index) == "number" and index >= 1 and index % 1 == 0 then
            count = count + 1
        end
    end
    return count
end

return M
