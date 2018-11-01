-----------------------------------------------------------------------------------------
-- Title: Displaying Images
-- Name: Valentina G Melendez
-- Course: ICS2O
-----------------------------------------------------------------------------------------
-- hide status bar
display.setStatusBar(display.HiddenStatusBar)
-- set the background of my screen.
display.setDefault("background", 230/255, 195/255, 200/255)

-- Create my local variables
local halfWTriangle = display.contentWidth * 1 / 4
local halfHTriangle = display.contentHeight * 1 / 4
local verticesT = {-110,-110, 270,-10, 70,-10}
local triangle = display.newPolygon( halfWTriangle, halfHTriangle, verticesT )

-- write "triangle" for triangle
local textObjectT = display.newText("triangle", 180, 100, Arial, 60)

-- set the color of the triangle 
triangle:setFillColor(150/255, 150/255, 200/255)

-- create my local varibles
local pentagonX = display.contentWidth * 3 / 4
local pentagonY = display.contentHeight * 1 / 4
local verticesPentagon = { -80, 0, -60, 40, 60, 40, 80, 0, 0, -60}
local pentagon = display.newPolygon( pentagonX, pentagonY, verticesPentagon)

-- write "pentagon" for pentagon
local textObjectP = display.newText("pentagon", 760, 100, Arial, 60)

-- set the color of the pentagon 
pentagon:setFillColor(150/255, 150/255, 200/255)

-- create my local variables
local hexagonX = display.contentWidth * 2 / 4
local hexagonY = display.contentHeight * 2.2/ 4
local verticesHexagon = { 0,150, -130,100, -130,-100, 0,-150, 130,-100, 130,100 }
local hexagon = display.newPolygon( hexagonX, hexagonY, verticesHexagon)
-- write 'hexagon' for hexagon
local textObjectH = display.newText("hexagon", 510, 600, Arial, 60)

-- set the color of the hexagon 
hexagon:setFillColor(150/255, 150/255, 200/255)

-- write who created the program
local textObjectC = display.newText("Created by: Valentina G. Melendez", 510, 700, Arial, 60)