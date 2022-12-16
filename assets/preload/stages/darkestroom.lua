function onCreate()
	-- background shit
	makeLuaSprite('BG', 'darkroom/redback', -920,-330 );
	setScrollFactor('BG', 0.7, 1);
        scaleObject('BG', 6, 6);
        addLuaSprite('BG', false);

	makeLuaSprite('BG1', 'darkroom/back1', -20,-330 );
	setScrollFactor('BG1', 0.7, 1);
        scaleObject('BG1', 1, 1);
        addLuaSprite('BG1', false);

	makeLuaSprite('BG2', 'darkroom/redmoon', 850,-100);
	setScrollFactor('BG2', 0.7, 1);
        scaleObject('BG2', 0.7, 0.7);
        addLuaSprite('BG2', false);

	makeLuaSprite('BG4', 'darkroom/robindead', 1050,150);
	setScrollFactor('BG4', 0.7, 1);
        scaleObject('BG4', 0.45, 0.45);
        addLuaSprite('BG4', false);


	makeLuaSprite('BG3', 'darkroom/blackstage', -950,-200);
	setScrollFactor('BG3', 0.7, 1);
        scaleObject('BG3', 0.6, 0.6);
        addLuaSprite('BG3', false);


	makeLuaSprite('BG5', 'darkroom/homerdead', -450,300 );
	setScrollFactor('BG5', 0.7, 1);
        scaleObject('BG5', 0.5, 0.5);
        addLuaSprite('BG5', false);

	makeLuaSprite('BG6', 'darkroom/deadcharacters', 250,700 );
	setScrollFactor('BG6', 0.7, 1);
        scaleObject('BG6', 0.7, 0.7);
        addLuaSprite('BG6', false);


	makeLuaSprite('BG7', 'darkroom/timmyandjerry', -400,900 );
	setScrollFactor('BG7', 0.7, 1);
        scaleObject('BG7', 0.55, 0.55);
        addLuaSprite('BG7', false);

	makeAnimatedLuaSprite('BG8', 'darkroom/susdead', 1200,600);
	addAnimationByPrefix('BG8', 'sus', 'ssafasfg', 24, true)
	setScrollFactor('BG8', 0.7, 1);
        scaleObject('BG8', 0.7, 0.7);
	objectPlayAnimation('BG8', 'sus', true)
        addLuaSprite('BG8', false);

	makeAnimatedLuaSprite('BG9', 'darkroom/billdead', -250,600);
	addAnimationByPrefix('BG9', 'stone', 'safasgasg', 24, true)
	setScrollFactor('BG9', 0.7, 1);
        scaleObject('BG9', 0.7, 0.7);
	objectPlayAnimation('BG9', 'stone', true)
        addLuaSprite('BG9', false);

	makeLuaSprite('bendy', 'darkroom/mechanic stuff/bendydead', -460,-300 );
	setScrollFactor('bendy', 0.7, 1);
        scaleObject('bendy', 0.5, 0.5);
        addLuaSprite('bendy', true);
		setProperty('bendy.alpha', 1)
        setObjectCamera('bendy', 'other')



doTweenX('loop', 'bendy', 1350, 50, 'linear')

end




function onTweenCompleted(tag)
if tag == 'loop' then
doTweenX('loop2', 'bendy', -460, 50, 'linear')
elseif tag == 'loop2' then
doTweenX('loop', 'bendy', 1350, 50, 'linear')
end
end


function onStepHit()
if curStep == 1167 then
doTweenZoom('gamezoom', 'camGame', 0.6, 0.3, 'quadInOut');
		setProperty('defaultCamZoom', 0.6);
elseif curStep == 1184 then
doTweenZoom('gamezoom', 'camGame', 0.45, 0.3, 'quadInOut');
		setProperty('defaultCamZoom', 0.45);
doTweenColor('color1', 'BG', '000000', 2, 'linear')
doTweenColor('color2', 'BG1', '000000', 2, 'linear')
doTweenColor('color3', 'BG2', '004141', 2, 'linear')
doTweenColor('color4', 'BG3', '000000', 2, 'linear')
doTweenColor('color5', 'BG4', '004141', 2, 'linear')
doTweenColor('color6', 'BG5', '004141', 2, 'linear')
doTweenColor('color7', 'BG6', '004141', 2, 'linear')
doTweenColor('color8', 'BG7', '004141', 2, 'linear')
doTweenColor('color9', 'BG8', '004141', 2, 'linear')
doTweenColor('color10', 'BG9', '004141', 2, 'linear')
doTweenColor('color11', 'bendy', '004141', 2, 'linear')
doTweenColor('color12', 'dad', '004141', 2, 'linear')
doTweenColor('color13', 'boyfriend', '004141', 2, 'linear')
elseif curStep == 2016 then
doTweenColor('color1', 'BG', 'ffffff', 1, 'linear')
doTweenColor('color2', 'BG1', 'ffffff', 1, 'linear')
doTweenColor('color3', 'BG2', 'ffffff', 1, 'linear')
doTweenColor('color4', 'BG3', 'ffffff', 1, 'linear')
doTweenColor('color5', 'BG4', 'ffffff', 1, 'linear')
doTweenColor('color6', 'BG5', 'ffffff', 1, 'linear')
doTweenColor('color7', 'BG6', 'ffffff', 1, 'linear')
doTweenColor('color8', 'BG7', 'ffffff', 1, 'linear')
doTweenColor('color9', 'BG8', 'ffffff', 1, 'linear')
doTweenColor('color10', 'BG9', 'ffffff', 1, 'linear')
doTweenColor('color11', 'bendy', 'ffffff', 1, 'linear')
doTweenColor('color12', 'dad', 'ffffff', 1, 'linear')
doTweenColor('color13', 'boyfriend', 'ffffff', 1, 'linear')
end
end

local xx = 400;
local yy = 600;
local xx2 = 400;
local yy2 = 650;
local ofs = 20;
local followchars = 1

function onUpdate()

    if followchars == 1 then
        if mustHitSection == false then

            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                    triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
    triggerEvent('Camera Follow Pos','','')
    end
local spin = 5
    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 800

        setProperty("bendy.angle", spin * math.sin(songPos))

    end