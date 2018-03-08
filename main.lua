-----------------------------------------------------------------------------------------
--
-- main.Lua
--
-- show how to use an if statement and random numbers
--
--
-- Created by: Fawaz Mezher
-- Created on: March 2018 
-----------------------------------------------------------------------------------------

local numberToGuessTextField = native.newTextField( display.contentCenterX - 500, display.contentCenterY - 100, 750, 140 )
numberToGuessTextField.id = "length textField"

local InstructionTextField = display.newText( "Pick A number between 1 and 6", display.contentCenterX - 200, display.contentCenterY - 400, native.systemFont, 95 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX +700
calculateButton.y = display.contentCenterY +500
calculateButton.id = "calculate button"

local function randomnumber( event )
    -- this function calculates the subtotal,tax,and total
 	math.randomseed( os.time() )
	local randomNumber = math.random( 1,6 )
    local numberUser = tonumber(numbertextfield)
    local answer

   if randomNumber == numberUser then
    answer = display.newText( " Correct YOU GOT IT" ..randomNumber, 50, 50 ,20)
   else
   	answer = display.newText( " Wrong the number is" ..randomNumber, 511, 501 ,20)
   end

end

calculateButton:addEventListener( "touch", calculateButtonTouch )






-- math.randomseed( os.time() )


-- io.write(numberToGuess)

-- io.write( "Pick a number from 1 to 6: " )

-- answer=io.read()
-- answerAsNumber = tonumber(answer)

-- if numberToGuess == answerAsNumber then
    -- io.write( "Correct" )
-- end

-- io.write( "Program done." )































