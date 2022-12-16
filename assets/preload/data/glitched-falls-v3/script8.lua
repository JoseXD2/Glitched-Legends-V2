-- script by ItsCapp don't steal, it's dumb

-- simply, offsets. they're the numbers in the top left of the character editor
idleoffsets = {'350', '30'} -- I recommend you have your idle offset at 0
leftoffsets = {'230', '20'}
downoffsets = {'350', '0'}
upoffsets = {'240', '80'}
rightoffsets = {'90', '240'}


-- change all of these to the name of the animation in your character's xml file
idle_xml_name = 'billc_pibby_idle'
left_xml_name = 'billc_pibby_left'
down_xml_name = 'billc_pibby_down'
up_xml_name = 'billc_pibby_up'
right_xml_name = 'billc_pibby_right'

-- basically horizontal and vertical positions
x_position = 1450
y_position = 500

-- scales your character (set to 1 by default)
xScale = 1
yScale = 1

-- invisible character (so basically if you wanna use the change character event, you need to make the second character invisible first)


-- pretty self-explanitory
name_of_character_xml = 'bill_glitch'
name_of_character = 'c1'
name_of_notetype = 'billalt'
--name_of_notetype2 = '' -- for multiple characters singing at the same time
--altnotetype = '' -- this is used for alt animations (uncomment if you use them)
--altnotetype2 = '' -- this is used for alt animations and singing at the same time (uncomment if you use them)

-- if it's set to true the character appears behind the default characters, including gf, watch out for that
foreground = true
playablecharacter = false -- change to 'true' if you want to flipX



doIdle = true

function onCreate()
	makeAnimatedLuaSprite(name_of_character, 'characters/' .. name_of_character_xml, x_position, y_position);
	addAnimationByPrefix(name_of_character, 'idle', idle_xml_name, 24, false);
	addAnimationByPrefix(name_of_character, 'singLEFT', left_xml_name, 24, false);
	addAnimationByPrefix(name_of_character, 'singDOWN', down_xml_name, 24, false);
	addAnimationByPrefix(name_of_character, 'singUP', up_xml_name, 24, false);
	addAnimationByPrefix(name_of_character, 'singRIGHT', right_xml_name, 24, false);


	scaleObject(name_of_character, xScale, yScale);


	objectPlayAnimation(name_of_character, 'idle');
	addLuaSprite(name_of_character, foreground);


end

local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == name_of_notetype then
		doIdle = false
		objectPlayAnimation(name_of_character, singAnims[direction + 1], false);

		if direction == 0 then
			setProperty(name_of_character .. '.offset.x', leftoffsets[1]);
			setProperty(name_of_character .. '.offset.y', leftoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character, singAnims[direction + 1], true);
			end
		elseif direction == 1 then
			setProperty(name_of_character .. '.offset.x', downoffsets[1]);
			setProperty(name_of_character .. '.offset.y', downoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character, singAnims[direction + 1], true);
			end
		elseif direction == 2 then
			setProperty(name_of_character .. '.offset.x', upoffsets[1]);
			setProperty(name_of_character .. '.offset.y', upoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character, singAnims[direction + 1], true);
			end
		elseif direction == 3 then
			setProperty(name_of_character .. '.offset.x', rightoffsets[1]);
			setProperty(name_of_character .. '.offset.y', rightoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character, singAnims[direction + 1], true);
			end
		end
	end
end

local billa = false

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0  and doIdle then
		objectPlayAnimation(name_of_character, 'idle');
		setProperty(name_of_character .. '.offset.x', idleoffsets[1]);
		setProperty(name_of_character .. '.offset.y', idleoffsets[2]);
	end
	doIdle = true

if curBeat == 213 then
doTweenY('i9w', 'c1', 400, 2, 'quadInOut')

end
if curBeat == 216 then
billa = true

end
if curBeat == 381 then
		cameraFlash('other', '0x000000', 900, true)


end
end
function onCreatePost()

setProperty('c1.y', -1300)

end


function onUpdate(elapsed)
if billa == true then
		songPos = getSongPosition()
		local currentBeat = (songPos/1000)*(bpm/80)
                doTweenY(dadTweenY, 'c1', -300-400*math.sin((currentBeat*0.5)*math.pi),0.01)

        end
end