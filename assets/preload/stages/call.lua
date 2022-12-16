
local Mod = {'Dark', 'Light', 'AMOLED'}-- yes i know AMOLED is only for mobile i think, but i don't care.

function onCreate()
	-- background shit
	makeLuaSprite('callback', 'call/backslel', -15,370);
        addLuaSprite('callback', false);

	makeLuaSprite('callfrontD', 'call/front1', -225,170);
	setScrollFactor('callfrontD', 1, 1);
        scaleObject('callfrontD', 1, 1);
	setProperty('callfrontD.alpha', 0)
        addLuaSprite('callfrontD', true);

	makeLuaSprite('callfrontL', 'call/front2', -225,170);
	setScrollFactor('callfrontL', 1, 1);
        scaleObject('callfrontL', 1, 1);
	setProperty('callfrontL.alpha', 0)
        addLuaSprite('callfrontL', true);

	makeLuaSprite('callfrontA', 'call/front3', -225,170);
	setScrollFactor('callfrontA', 1, 1);
        scaleObject('callfrontA', 1, 1);
	setProperty('callfrontA.alpha', 0)
        addLuaSprite('callfrontA', true);

        makeAnimatedLuaSprite('lel','call/noice', 0,0);
        addAnimationByPrefix('lel','idle','noice',24,false);
        setProperty('lel.alpha', 0);
        addLuaSprite('lel', false);
        setObjectCamera('lel', 'other')
        scaleObject('lel', 2.5, 2.5);


        makeAnimatedLuaSprite('lel2','call/ranalaught', 400,100);
        addAnimationByPrefix('lel2','idle','ranaxd',24,false);
        setProperty('lel2.alpha', 0);
        addLuaSprite('lel2', false);
        setObjectCamera('lel2', 'other')
        scaleObject('lel2', 2.5, 2.5);


	    get_the_mod = math.floor(getRandomInt(1,#Mod))
	if Mod[get_the_mod] == 'Dark' then
	setProperty('callfrontD.alpha', 1)
	removeLuaSprite('callfrontA')
	removeLuaSprite('callfrontL')
end
	if Mod[get_the_mod] == 'Light' then
	setProperty('callfrontL.alpha', 1)
	removeLuaSprite('callfrontA')
	removeLuaSprite('callfrontD')
end
	if Mod[get_the_mod] == 'AMOLED' then
	setProperty('callfrontA.alpha', 1)
	removeLuaSprite('callfrontL')
	removeLuaSprite('callfrontD')
end


end

function onCreatePost()
triggerEvent('Camera Follow Pos','530','590')

end