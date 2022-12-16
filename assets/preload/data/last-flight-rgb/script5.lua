function goodNoteHit(id, direction, noteType, isSustainNote)
        if direction == 0 then
            makeLuaSprite("left_l","LEFTL",-140,-50)
            addLuaSprite("left_l",true)
            setObjectCamera('left_l','other')
            setBlendMode("left_l","add")
            doTweenColor('purple_hi', 'left_l', 'FFFFFFFF', 0.2, 'quartIn')
            runTimer("purple",0.1)
        elseif direction == 2 then
            makeLuaSprite("up_l","UPL",-140,-50)
            addLuaSprite("up_l",true)
            setObjectCamera('up_l','other')
            setBlendMode("up_l","add")
            doTweenColor('green_hi', 'up_l', 'FFFFFFFF', 0.2, 'quartIn')
            runTimer("green",0.1)
        elseif direction == 3 then
            makeLuaSprite("right_l","RIGHTL",-140,-50)
            addLuaSprite("right_l",true)
            setObjectCamera('right_l','other')
            setBlendMode("right_l","add")
            doTweenColor('red_hi', 'right_l', 'FFFFFFFF', 0.2, 'quartIn')
            runTimer("red",0.1)
        elseif direction == 1 then
            makeLuaSprite("down_l","DOWNL",-140,-50)
            addLuaSprite("down_l",true)
            setObjectCamera('down_l','other')
            setBlendMode("down_l","add")
            doTweenColor('cyan_hi', 'down_l', 'FFFFFFFF', 0.2, 'quartIn')
            runTimer("cyan",0.1)
        end
end
function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'purple' then
        doTweenAlpha('purple_l', 'left_l',0,0.25, 'linear');
    end
    if tag == 'red' then
        doTweenAlpha('red_l', 'right_l',0,0.25, 'linear');
    end
    if tag == 'cyan' then
        doTweenAlpha('cyan_l', 'down_l',0,0.25, 'linear');
    end
    if tag == 'green' then
        doTweenAlpha('green_l', 'up_l',0,0.25, 'linear');
    end
end
function onTweenCompleted(tag)
    if tag == 'purple_l' then
        removeLuaSprite('left_l', true);
    end
    if tag == 'red_l' then
        removeLuaSprite('right_l', true);
    end
    if tag == 'cyan_l' then
        removeLuaSprite('down_l', true);
    end
    if tag == 'green_l' then
        removeLuaSprite('up_l', true);
    end
end