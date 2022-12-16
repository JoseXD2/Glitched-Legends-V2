function onCreate()
makeLuaSprite('zoom', 'zoom', 0, 0)
setProperty('zoom.alpha', 1)
setObjectCamera('zoom', 'other')
end

function onUpdate()
if getProperty('zoom.alpha') == 0 then
zoom = true
    end
end

function onEvent(name,value1,value2)
    if name == "CamaraZoom" and not zoom == true and not lowQuality then
    if value2 == '' then
    setProperty("defaultCamZoom",value1)
	debugPrint(value2 )
	else
    doTweenZoom('camz','camGame',tonumber(value1),tonumber(value2),'sineInOut')
	end      
    end
end

function onTweenCompleted(name)
if name == 'camz' then
setProperty("defaultCamZoom",getProperty('camGame.zoom')) 
end
end