-----------------------------------------------------------------------------------------
-- Name: Valentina G Melendez
-- Course: ICS2O/3C
-- This program displays Hello, World on the IPad simulator and "Hellooooooo!" to the command
-- terminal.
-----------------------------------------------------------------------------------------

-- print "Hello, World" to the command terminal
print ("***Hellooooooo!")

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background coulour
display.setDefault("background", 100/225, 100/255, 180/255)

-- create a local variable
local textObject
local textSignature
-- dispalys text on the screen at the position x = 500 and y = 500 with
-- a default font style and font size of 50
textObject = display.newText( "Hello, Valentina!", 500, 300, nil, 70)
-- a default font style and font size of 50
textSignature = display.newText( "By: Valentina G Melendez", 500, 500, nil, 50)
-- sets the color of the text
textObject:setTextColor(255/255, 255/255, 255/255)

local bkgMusic = audio.loadSound( "Sounds/bkgMusic.mp3")
local bkgMusicSoundChannel

bkgMusicSoundChannel = audio.play(bkgMusic)