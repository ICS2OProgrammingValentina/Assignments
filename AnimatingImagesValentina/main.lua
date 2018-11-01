-----------------------------------------------------------------------------------------
-- Title: Animating Images
-- Name: Valentina
-- COurse: ICS2O
-----------------------------------------------------------------------------------------


-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- Display background
local backgroundImage = display.newImageRect("Images/hauntedhouse.png", 2048,800)

-- set background
backgroundImage.x = display.contentWidth / 2
backgroundImage.y = display.contentHeight / 2
-------------------------------------------------------------------------------------
local ghost = display.newImageRect("Images/ghost.png", 150, 150)

-- set ghost
ghost.x = display.contentWidth * 1/4
ghost.y = display.contentHeight * 1/4

scrollspeedG = 4

ghost.alpha = 1

-- Function: MoveGhost
-- Input; This function accepts an event listener
-- Output: None
-- Description: This function adds the scrollspeed to the x-value of the ghost
local function MoveGhost(event)
	-- add the scroll speed to the x-value of the ghost
	ghost.x = ghost.x + scrollspeedG
	ghost.y = ghost.y + scrollspeedG
	-- change the transparency every time it moves so that it fades out.
	ghost.alpha = ghost.alpha + 0.0000000000001
end

-- ghost will be called over and over again
Runtime:addEventListener("enterFrame", MoveGhost) 
--------------------------------------------------------------------------------------
local pumpkin =  display.newImageRect("Images/pumpkin.png", 150, 150)

-- set pumpkin
pumpkin.y = display.contentHeight * 2/4
pumpkin.x = display.contentWidth * 3/4

pumpkin.alpha = 1

local function ScalePumpkin(event)
	pumpkin:scale(0.99, 0.99)
end

--jio
Runtime:addEventListener("enterFrame", ScalePumpkin)
--------------------------------------------------------------------------------------
local skeleton = display.newImageRect("Images/skeleton.png", 200, 200)

-- set skeleton
skeleton.y = display.contentHeight * 3/4
skeleton.x = display.contentWidth * 1/4

scrollspeedS = 4

-- set image to be transparent
skeleton.alpha = 0

-- Function: MoveSkeleton
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the skeleton
local function MoveSkeleton(event)
	-- add the scroll speed to the x-value of the skeleton
	skeleton.x = skeleton.x + scrollspeedS
	-- change the transparency of the skeleton every time it moves so that it fades out
	skeleton.alpha = skeleton.alpha + 0.01
end

-- moveskeleton will be called over and over again
Runtime:addEventListener("enterFrame", MoveSkeleton)
--------------------------------------------------------------------------------
-- create text variable
local textObject

-- display text
textObject = display.newText( "BOO!!!", 500, 500, Arial, 50)

-- set the color of text
textObject:setTextColor( 255/255, 145/255, 0/255)