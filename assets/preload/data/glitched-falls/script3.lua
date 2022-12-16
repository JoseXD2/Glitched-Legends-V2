function onCreate()
	Dodged = false;
    canDodge = false;
        makeAnimatedLuaSprite('bfd','bf_dodge', 2170, 450);
        addAnimationByPrefix('bfd','dod','bf_dodge_01 instancia 1',24,false);
        scaleObject('bfd', 1, 1);
       setProperty('bfd.alpha', 0);
        addLuaSprite('bfd', false);


        makeAnimatedLuaSprite('worn','spacebar', 350, 200);
        addAnimationByPrefix('worn','worn','spacebar',24,true);
        scaleObject('worn', 0.7, 0.7);
    setObjectCamera('worn', 'hud')
       setProperty('worn.alpha', 0);
        addLuaSprite('worn', false);
end
local gnome = {'left', 'right', 'hudright', 'hudleft'}
function onBeatHit()
if curBeat >= 64 then
        if curBeat % 25 == 0 then

	    getthatmf = math.floor(getRandomInt(1,#gnome))
	if gnome[getthatmf] == 'left' then

  makeAnimatedLuaSprite('gnome', 'gravity/mechanic stuff/gnomo1', -1500, 690);
  addAnimationByPrefix('gnome', 'gnome', 'gnome instancia 1', 24, true);
  objectPlayAnimation('gnome', 'gnome', true)
	setObjectOrder('gnome', 20);
  addLuaSprite('gnome', false);
  doTweenX('weeeeee1', 'gnome', 3800, 5.5, 'linear');
	runTimer('can', 3.5);
	runTimer('haha', 4);
end
	if gnome[getthatmf] == 'right' then
    if mustHitSection == true then

  makeAnimatedLuaSprite('gnome2', 'gravity/mechanic stuff/gnomo2', 4500, 690);
  addAnimationByPrefix('gnome2', 'gnome2', 'gnome2 instancia 1', 24, true);
	setProperty('gnome2.flipX', true)
  objectPlayAnimation('gnome2', 'gnome2', true)
	setObjectOrder('gnome2', 20);
  addLuaSprite('gnome2', false);
  doTweenX('weeeeee2', 'gnome2', -2000, 6.5, 'linear');
	runTimer('can2', 1.5);
	runTimer('haha2', 2);
    elseif mustHitSection == false then

  makeAnimatedLuaSprite('gnome', 'gravity/mechanic stuff/gnomo1', -1500, 690);
  addAnimationByPrefix('gnome', 'gnome', 'gnome instancia 1', 24, true);
  objectPlayAnimation('gnome', 'gnome', true)
	setObjectOrder('gnome', 20);
  addLuaSprite('gnome', false);
  doTweenX('weeeeee1', 'gnome', 3800, 5.5, 'linear');
	runTimer('can', 3.5);
	runTimer('haha', 4);
end
end
	if gnome[getthatmf] == 'hudleft' then
  makeAnimatedLuaSprite('gnome3', 'gravity/mechanic stuff/gnomo3', -900, -200);
  addAnimationByPrefix('gnome3', 'gnome3', 'gnome3 instancia 1', 24, true);
  objectPlayAnimation('gnome3', 'gnome3', true)
		setObjectCamera('gnome3', 'other')
        scaleObject('gnome3', 4, 4);
  addLuaSprite('gnome3', false);
  doTweenX('weeeeee3', 'gnome3', 1500, 5, 'linear');
end
	if gnome[getthatmf] == 'hudright' then
  makeAnimatedLuaSprite('gnome4', 'gravity/mechanic stuff/gnomo3', 1900, -200);
  addAnimationByPrefix('gnome4', 'gnome4', 'gnome3 instancia 1', 24, true);
  objectPlayAnimation('gnome4', 'gnome4', true)
	setProperty('gnome4.flipX', true)
		setObjectCamera('gnome4', 'other')
        scaleObject('gnome4', 4, 4);
  addLuaSprite('gnome4', false);
  doTweenX('weeeeee4', 'gnome4', -1500, 5, 'linear');
end
end
end

function onUpdate()
    if canDodge == true then
	if keyPressed("space") then
Dodged = true;
setProperty('worn.alpha', 0)
       setProperty('bfd.alpha', 1);
  objectPlayAnimation('bfd', 'dod', true)
       setProperty('boyfriend.alpha', 0);
	runTimer('kk', 1);
canDodge = false;
end
end
end

function onTweenCompleted(tag)
if tag == 'weeeeee1' then
removeLuaSprite('gnome')
elseif tag == 'weeeeee2' then
removeLuaSprite('gnome2')
elseif tag == 'weeeeee3' then
removeLuaSprite('gnome3')
elseif tag == 'weeeeee4' then
removeLuaSprite('gnome3')
end
end

function onTimerCompleted(tag, loops, loopsLeft)

   if tag == 'can' then
setProperty('worn.alpha', 1)
objectPlayAnimation('worn', 'worn', true)
    canDodge = true;
   elseif tag == 'can2' then
setProperty('worn.alpha', 1)
objectPlayAnimation('worn', 'worn', true)
    canDodge = true;
   elseif tag == 'haha' and Dodged == false then
        setProperty('health', getProperty('health') - 1.3);
		cameraShake('camGame', 0.05, 0.3)
		cameraShake('camHud', 0.05, 0.2)
setProperty('worn.alpha', 0)
    canDodge = false;
   elseif tag == 'haha2' and Dodged == false then
        setProperty('health', getProperty('health') - 0.8);
		cameraShake('camGame', 0.2, 0.05)
		cameraShake('camHud', 0.2, 0.05)
setProperty('worn.alpha', 0)
    canDodge = false;
   elseif tag == 'haha' and Dodged == true then
   Dodged = false
   elseif tag == 'haha2' and Dodged == true then
   Dodged = false
   elseif tag == 'kk' then
       setProperty('bfd.alpha', 0);
       setProperty('boyfriend.alpha', 1);

end
end
end

