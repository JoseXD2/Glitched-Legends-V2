--half of the script is by letter D

	Image = 'garden/mechanic stuff/space'-- the image
	Sound_before_hit = 'warning'-- the sound that begin as soon the event starts 
	Sound_after_hit = 'slash_effect'-- the sound that begin after you hit the space bar

	BfAnimation = 'dodge'-- Bf animation 

	X = 300-- the X for the image
	scale = 1-- the image scale
	Y = 250-- the Y for the image

-- if you don't want animation or sounds, just delete it and but nil. (example, 'Dodge', delete the word Dodge and this thing--> '' and put nil and that's it)
function onCreate()
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	makeLuaSprite('Do', Image, X, Y)
	setObjectCamera('Do', 'other');
	setProperty('Do.alpha',0)
	setProperty('Do.scale.x', scale)
	setProperty('Do.scale.y', scale)
addLuaSprite('Do',false)


        makeAnimatedLuaSprite('bfd','bf_dodge',getProperty('boyfriend.x') -200, getProperty('boyfriend.y') +350);
        addAnimationByPrefix('bfd','dod','bf_dodge_01 instancia 1',24,false);
        scaleObject('bfd', 1, 1);
       setProperty('bfd.alpha', 0);
        addLuaSprite('bfd', false);


	makeLuaSprite('D', 'garden/mechanic stuff/redthing',getProperty('dad.x') -200 , getProperty('dad.y') -200)
	setProperty('D.alpha',0)
	setProperty('D.scale.x', 0.5)
	setProperty('D.scale.y', 1)
addLuaSprite('D',false)

	makeLuaSprite('D1', 'garden/mechanic stuff/target',getProperty('boyfriend.x') , getProperty('boyfriend.y') +300);
	setProperty('D1.alpha',0)
	setProperty('D1.scale.x', 1)
	setProperty('D1.scale.y', 1)
addLuaSprite('D1',true)


        makeAnimatedLuaSprite('reda','garden/mechanic stuff/red_attack', getProperty('dad.x') -300, getProperty('dad.y') -300);
        addAnimationByPrefix('reda','reda','red_attack instancia 1',24,false);
        scaleObject('reda', 1, 1);
       setProperty('reda.alpha', 0);
        addLuaSprite('reda', false);

end


function onEvent(name, value1, value2)
    if name == "redDodge" then
		doTweenAlpha('hi', 'Do', 1, 0.000001, 'linear');
       setProperty('D1.alpha', 1);
	doTweenAngle('Kddd', 'D', -10, 0.7, 'quadInOut')
	doTweenY('Kd', 'D1', getProperty('boyfriend.y') +200, 0.7, 'quadInOut')
       setProperty('D.alpha', 1);
		playSound(Sound_before_hit, 1);
    --Get Dodge time
    DodgeTime = (value1);
	--Set values so you can dodge
	canDodge = true;
	runTimer('Died', DodgeTime);
	runTimer('dodo1', 0.8);


	end
end

function onUpdate()
    if canDodge == true then
	if (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or keyPressed('space') then
Dodged = true;
       setProperty('bfd.alpha', 1);
  objectPlayAnimation('bfd', 'dod', true)
       setProperty('boyfriend.alpha', 0);

        setProperty('health', getProperty('health') + 0.3);
       setProperty('D1.alpha', 0);
       setProperty('D.alpha', 0);
    setProperty('boyfriend.specialAnim', true)
		characterPlayAnim('boyfriend', BfAnimation, true);
	setProperty('Do.scale.x', 0.7)
	setProperty('Do.scale.y', 0.7)
		playSound(Sound_after_hit, 1);

       setProperty('reda.alpha', 1);
  objectPlayAnimation('reda', 'reda', true)
       setProperty('dad.alpha', 0);



	runTimer('switch', 0.7);
	runTimer('dodo', 0.1);


canDodge = false;
end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
        setProperty('health', getProperty('health') - 5);
	doTweenX('dad', 'dad', 600, 0.01, 'quadInOut')
		playSound(Sound_after_hit, 1);
   elseif tag == 'Died' and Dodged == true then
   Dodged = false
   elseif tag == 'dodo' then
	setProperty('Do.scale.x', scale)
	setProperty('Do.scale.y', scale)
   elseif tag == 'dodo1' then
	doTweenAlpha('by', 'Do', 0, 0.3, 'linear');
   elseif tag == 'switch' then
       setProperty('reda.alpha', 0);
       setProperty('dad.alpha', 1);
       setProperty('bfd.alpha', 0);
       setProperty('boyfriend.alpha', 1);

end
end

function onTweenCompleted(tag)
   if tag == 'Kddd' then
	doTweenAngle('Kdddd', 'D', 0, 0.7, 'quadInOut')
   elseif tag == 'Kd' then
	doTweenY('Kdd', 'D1', getProperty('boyfriend.y') +300, 0.7, 'quadInOut')
   elseif tag == 'Kdddd' then
	doTweenAngle('Kddd', 'D', -10, 0.7, 'quadInOut')
   elseif tag == 'Kdd' then
	doTweenY('Kd', 'D1', getProperty('boyfriend.y') +200, 0.7, 'quadInOut')

end
end

