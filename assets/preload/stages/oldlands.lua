function onCreate()
	-- background shit
	makeLuaSprite('oldback1', 'mickhouse/skymouse', -1230,-1500 );
	setScrollFactor('oldback1', 1, 1);
        scaleObject('oldback1', 2, 2);
        addLuaSprite('oldback1', false);

	makeLuaSprite('oldback2', 'mickhouse/backmouse2', -1230,-400 );
	setScrollFactor('oldback2', 0.7, 1);
        scaleObject('oldback2', 2, 2);
        addLuaSprite('oldback2', false);

	makeLuaSprite('oldback3', 'mickhouse/backmouse', -1230,400 );
	setScrollFactor('oldback3', 1, 1);
        scaleObject('oldback3', 2, 2);
        addLuaSprite('oldback3', false);

	makeLuaSprite('oldback4', 'mickhouse/housemouse', -630,-1600 );
	setScrollFactor('oldback4', 1, 1);
        scaleObject('oldback4', 2, 2);
        addLuaSprite('oldback4', false);

        makeAnimatedLuaSprite('oldanimated','mickhouse/ballonglove', -730,-605);
        addAnimationByPrefix('oldanimated','idle','manoglobo',24,false);
        setProperty('oldanimated.alpha', 1);
        addLuaSprite('oldanimated', false);

        makeAnimatedLuaSprite('oldanimated2','survivors/pedro', 1430,105);
        addAnimationByPrefix('oldanimated2','idle','pedro',24,false);
        setProperty('oldanimated2.alpha', 1);
        scaleObject('oldanimated2', 1.2, 1.2);
        addLuaSprite('oldanimated2', false);

	makeLuaSprite('oldback5', 'mickhouse/frontmouse', -1230,600 );
	setScrollFactor('oldback5', 1, 1);
        scaleObject('oldback5', 2, 2);
        addLuaSprite('oldback5', true);


end

function onMoveCamera(focus)
function opponentNoteHit(id, direction, noteType, isSustainNote)

       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.015);
	end
	if focus == 'dad' then
		setProperty('animatedicono.alpha', 0)
		setProperty('animatedicon.alpha', 1)
end
	if noteType == 'GF Sing' or focus == 'gf' then
		setProperty('animatedicono.alpha', 1)
		setProperty('animatedicon.alpha', 0)
end
end
end




function onUpdate()
if getProperty('pibby_playable.animation.curAnim.name') == 'singUP' or getProperty('pibby_playable.animation.curAnim.name') == 'singLEFT' or getProperty('pibby_playable.animation.curAnim.name') == 'singDOWN' or getProperty('pibby_playable.animation.curAnim.name') == 'singRIGHT' then
		setProperty('animatedbficon.alpha', 0)
		setProperty('animatedbficonp.alpha', 1)
end
if getProperty('boyfriend.animation.curAnim.name') == 'singUP' or getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' or getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' or getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
		setProperty('animatedbficon.alpha', 1)
		setProperty('animatedbficonp.alpha', 0)
end

if getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('dad.animation.curAnim.name') == 'singRIGHT' then

setProperty('animatedicon.alpha', 1)
setProperty('animatedicono.alpha', 0)

end
if getProperty('gf.animation.curAnim.name') == 'singUP' or getProperty('gf.animation.curAnim.name') == 'singLEFT' or getProperty('gf.animation.curAnim.name') == 'singDOWN' or getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
setProperty('animatedicon.alpha', 0)
setProperty('animatedicono.alpha', 1)

end
end