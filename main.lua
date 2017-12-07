-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Import widget.
local widget = require("widget")


display.setDefault("background", 245 / 255, 245 / 255, 220 / 255)

-- The internal counter.
local count = 0

-- Init the text.
local text = display.newText({
    text = count .. " click",
    x = display.contentCenterX,
    y = display.contentHeight * 0.5,
    fontSize = 24,
})

-- Set the color of the text.
text:setFillColor(0 / 255, 0 / 255, 0 / 255)

-- Declare the listener of the button.
local function btnListener(event)
  if event.phase == "ended" then
    -- Update the counter.
    count = (count + 1) % 11
    
    -- Update the text according to our internal counter.
    if count <= 1 then
      text.text = count .. " click"
    else
      text.text = count .. " clicks"
    end
  end
end

-- Init the button.
local button = widget.newButton({
    x = display.contentCenterX,
    y = display.contentHeight * 0.7,
    label = "Tap Me",
    isEnabled = true,
    onEvent = btnListener,
    shape = "rounedRect",
    labelColor = {
      default = { 0 / 255, 0 / 255, 0 / 255},
      over = { 0 / 255, 0 / 255, 0 / 255},
    },
    fillColor = {
      default = { 180 / 255, 255 / 255, 255 / 255},
      over = { 110 / 255, 255 / 255, 255 / 255},
    }
})