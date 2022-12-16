function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf_pibby'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'sound_dead'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'Deathbydarkness'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'scroll'); --put in mods/music/
end