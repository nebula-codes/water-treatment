-- Import the necessary libraries
local GUI = require("GUI")
local system = require("System")

-- Create a new application
local application = GUI.application()

-- Create a new window
local window = application:addChild(GUI.titledWindow(50, 22, 60, 20, "Application", true))

-- Create a new layout for the window
local layout = window:addChild(GUI.layout(1, 2, window.width, window.height - 1, 1, 1))

-- Create a new tabbed pane
local tabbedPane = layout:setPosition(1, 1, layout:addChild(GUI.tabbedPane(1, 1, 30, 20)))

-- Add tabs to the tabbed pane
for i = 1, 3 do
    local tab = tabbedPane:addChild(GUI.tab("Tab " .. i))

    -- Add buttons to the tab
    for j = 1, 3 do
        tab:addChild(GUI.roundedButton(1, j * 3, 20, 2, 0xFFFFFF, 0x555555, 0x880000, 0xFFFFFF, "Button " .. j))
    end
end

-- Draw the application
application:draw(true)

-- Start the application
application:start()