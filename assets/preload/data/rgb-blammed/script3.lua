local colors = {
	[0] = "C24B99",
	[1] = "00FFFF",
	[2] = "12FA05",
	[3] = "F9393F"
}

function onCreate()
	addLuaScript("custom_events/PhillyGlowLua")
end

function onUpdate()
	if (getProperty("phillyGlowGradient.visible") == true) then
		if (
			getProperty("boyfriend.animation.curAnim.name"):sub(1, 4) == "idle" and
			getProperty("dad.animation.curAnim.name"):sub(1, 4) == "idle"
		) then
			triggerEvent("PhillyGlowLua", "0")
		end
	end
end

function goodNoteHit(id, dir, type, sus)
	if (sus) then return end
	
	triggerEvent("PhillyGlowLua", "1", colors[dir])
	triggerEvent("PhillyGlowLua", "2", "")
end

function opponentNoteHit(id, dir, type, sus)
	if (sus) then return end
	
	triggerEvent("PhillyGlowLua", "1", colors[dir])
	triggerEvent("PhillyGlowLua", "2", "")
end