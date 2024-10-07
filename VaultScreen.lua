-- Function to get items from the vault
function getItems()
    local items = {}
    -- Assuming the vault is connected to the peripheral on the right
    local vault = peripheral.wrap("right")
    if vault then
        items = vault.list()
    else
        print("Vault not found!")
    end
    return items
end

-- Function to display items on the screen
function displayItems(items)
    term.clear()
    term.setCursorPos(1, 1)
    print("Items in Vault:")
    for slot, item in pairs(items) do
        print(slot .. ": " .. item.name .. " x" .. item.count)
    end
end

-- Main program loop
while true do
    local items = getItems()
    displayItems(items)
    sleep(5) -- Update every 5 seconds
end
