local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('hellclownCutscene');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onUpdate(elapsed)
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Hurt Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Hurt Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'customNotes/FIRENOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'customNotes/FIREnoteSplashes');
		end
	end
end