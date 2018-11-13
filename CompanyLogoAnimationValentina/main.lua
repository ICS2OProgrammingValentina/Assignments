-----------------------------------------------------------------------------------------
-- Title: CompanyLogoAnimation
-- Name: Valentina
-- This program will make the company logo appear
-----------------------------------------------------------------------------------------

-- Hide task bar
display.setStatusBar(display.HiddenStatusBar)

-- display photoshoped company logo
local sword = display.newImageRect("Images/CompanyLogoValentina@2x.png", 1100, 800)

-- anchor image
sword.x = display.contentWidth * 1/4
sword.y = display.contentHeight * 2/4

-- speed for sword
scrollspeedS = 6

-- set image to be transparent
sword.alpha = 0

-- Function: MoveSword
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the sword
local function MoveSword(event)
	-- add the scroll speed to the x-value of the sword
	sword.x = sword.x + scrollspeedS
	-- change the transparency of the sword every time it moves so that it fades out
	sword.alpha = sword.alpha + 0.01
end

-- movesword will be called over and over again
Runtime:addEventListener("enterFrame", MoveSword)

-- display background
display.setDefault("background", 0/255, 0/255, 0/255)

-- sound effect for sword
local sound = audio.loadSound( "Sounds/swordSound.mp3")
local soundChannel

soundChannel = audio.play(sound)



