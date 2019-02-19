-----------------------------------------------------------------------------------------
--
-- how to add a text field and button, so that you can enter text
-- Made by Davin Rousseau
-----------------------------------------------------------------------------------------
display.setDefault( "background", 255/255, 0, 0 )

local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 120, 300, 75 )
answerTextField.id = "answer textField"

local enterButton = display.newImageRect( "Assets/enterButton.png", 150, 150 )
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY
enterButton.id = "enter button"
 
local function enterButtonTouch( event )
    -- it is not perfect, but we will make it better soon
    print( answerTextField.text )

    return true
end

enterButton:addEventListener( "touch", enterButtonTouch )