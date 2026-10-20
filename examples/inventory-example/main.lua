local summary = require("src/slot_summary")

Event.InventoryUpdated.Subscribe("inventory_example_updates", function(update)
    if update == nil then
        return
    end

    local changed = summary.count_indexes(update.slotsUpdated)
    log("Inventory slot updates:", changed)
end)
